import os
import time
import requests
import re
from datetime import datetime

# ================= 配置区 =================
# 你的 n8n Webhook 地址
N8N_WEBHOOK_URL = "http://localhost:5678/webhook/vivado-analyzer"
# 要监控的项目路径
PROJECT_ROOT = "./sdr-psk-fpga-2025.runs" 
# 轮询间隔(秒)
CHECK_INTERVAL = 10 

# Watch Synthesis and Implementation log files
TARGET_LOGS = [ 
    "synth_1/runme.log",            
    "impl_1/runme.log"
]

ERROR_PATTERNS = [
    r"^ERROR:", 
    r"^CRITICAL WARNING:",
    r"^WARNING:", 
    r"Timing violation", 
    r"WNS < 0",            # 负时序裕量
    r"TNS < 0"
]

# 记录文件上次读取的位置，避免重复报警
file_pointers = {}

def scan_files(root_dir):
    log_files = []
    for dirpath, _, filenames in os.walk(root_dir):
        for f in filenames:
            if f in TARGET_LOGS:
                log_files.append(os.path.join(dirpath, f))
    return log_files

def process_log(filepath):
    # 如果是新文件，初始化指针
    if filepath not in file_pointers:
        file_pointers[filepath] = 0 # 或者 os.path.getsize(filepath) 如果只想看新产生的
    
    current_size = os.path.getsize(filepath)
    if current_size <= file_pointers[filepath]:
        return # 文件没更新

    # 读取新增内容
    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        f.seek(file_pointers[filepath])
        new_lines = f.readlines()
        file_pointers[filepath] = f.tell()

    # 分析新增行
    error_buffer = []
    for i, line in enumerate(new_lines):
        for pattern in ERROR_PATTERNS:
            if re.search(pattern, line):
                # 提取错误行的上下文 (前后几行)
                context_start = max(0, i - 2)
                context_end = min(len(new_lines), i + 3)
                snippet = "".join(new_lines[context_start:context_end])
                error_buffer.append(snippet)
                break 
    
    # 如果发现错误，发送给 n8n
    if error_buffer:
        send_to_n8n(filepath, "\n...\n".join(error_buffer))

def send_to_n8n(filepath, content):
    filename = os.path.basename(filepath)
    # 简单的去重逻辑，防止连续刷屏
    print(f"检测到错误: {filename}")
    
    payload = {
        "project": os.path.abspath(PROJECT_ROOT),
        "file": filepath,
        "log_type": filename,
        "error_content": content,
        "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    }
    
    try:
        requests.post(N8N_WEBHOOK_URL, json=payload, timeout=5)
        print("已上报 n8n")
    except Exception as e:
        print(f"上报失败: {e}")

if __name__ == "__main__":
    print(f"开始监控 Vivado 项目: {os.path.abspath(PROJECT_ROOT)}")
    while True:
        try:
            logs = scan_files(PROJECT_ROOT)
            for log in logs:
                process_log(log)
            time.sleep(CHECK_INTERVAL)
        except KeyboardInterrupt:
            break
        except Exception as e:
            print(f"Main Loop Error: {e}")