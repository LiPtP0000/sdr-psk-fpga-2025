# 时钟使能修改总结

## 目标

将 Tx_wrapper 和 Rx_wrapper 中所有非 32.768MHz 驱动的时钟改为 32.768MHz + 对应频率时钟使能的方式。

## 已完成的修改

### 1. Div_clk32M768.v ✅

- 已修改为生成时钟使能信号而非分频时钟
- 输出信号现在是单周期脉冲（上升沿检测）

### 2. PN_Gen.v ✅

- 添加了 `clk_enable` 输入端口
- LFSR 逻辑仅在 `clk_enable` 为高时更新

### 3. Tx_Data.v ✅

- 添加了 `clk_enable` 输入端口
- 所有寄存器更新仅在 `clk_enable` 为高时执行
- PN_Gen 实例化已更新以传递 `clk_enable`

### 4. Rx 相关模块 ✅ (之前已完成)

- PSK_Detection.v
- SPB_Detection_wrapper.v
- Rx_SD.v, Rx_PD.v, Rx_BD.v
- Abs.v
- Depacketizer.v
- flatten_wrapper.v
- Bits_Flatten.v

## 待修改的模块

### Tx 发送路径

#### 5. Packetizer.v

**当前状态**: 使用 `clk` (1.024MHz)
**需要修改**:

- 添加 `clk` 改为 32.768MHz
- 添加 `clk_enable` 输入 (连接到 clk1M024 使能信号)
- FSM 状态转换仅在 `clk_enable` 为高时执行

#### 6. PSK_Modulation_wrapper.v

**当前状态**: 使用两个时钟域 (clk_1d024M 和 clk_16d384M)
**需要修改**:

- 保持 `clk_32M768` 作为主时钟
- 添加 `clk_enable_1M024` 和 `clk_enable_16M384` 输入
- FIFO 的两侧时钟改为使用时钟使能

#### 7. PSK_Mod.v

**当前状态**: 使用 `clk_16M384`
**需要修改**:

- `clk_16M384` 改为 `clk` (32.768MHz)
- 添加 `clk_enable` 输入 (连接到 clk16M384 使能信号)
- 计数器和状态机仅在 `clk_enable` 为高时更新
- 内部生成的 `out_clk_1M024` 改为使能信号

#### 8. NCO_cos_sin.v

**当前状态**: 使用 `clk` (16.384MHz)
**需要修改**:

- 添加 `clk_enable` 输入
- 截断逻辑仅在使能时执行

#### 9. Tx_wrapper.v 顶层

**需要修改**:

- 添加 `clk_32M768` 输入
- 保留 `clk_16M384`, `clk_1M024`, `clk_2M048` 作为使能信号输入
- 更新所有子模块实例化以传递正确的时钟和使能信号

### Rx 接收路径

#### 10. PSK_Signal_Extend.v

**当前状态**: 使用 `clk` (16.384MHz)  
**需要修改**:

- `clk` 改为 32.768MHz
- 添加 `clk_enable` 输入
- 寄存器更新仅在使能时执行

#### 11. costas_loop_wrapper.v 及其子模块

**当前状态**: 使用 `clk_16M384`
**需要修改**:

- `clk_16M384` 改为 `clk_32M768`
- 添加 `clk_enable_16M384` 输入
- 所有子模块需要相应更新:
  - NCO_rx_wrapper.v
  - NCO_Phase.v
  - Error_Detect_Ctrl.v
  - Truncate_IQ.v
  - AXI_2x.v
  - Delay.v (如果使用)

#### 12. Rx_wrapper.v 顶层

**需要修改**:

- 保留所有时钟输入但将它们用作使能信号
- 更新 PSK_Signal_Extend 和 costas_loop_wrapper 实例化
- 16M 数据寄存器改为使用 32M768 时钟 + 16M384 使能

## 修改模板

所有模块的修改应遵循以下模式:

```verilog
// 之前
module Example (
    input clk_1M024,  // 或其他频率
    // ...
);
    always @(posedge clk_1M024) begin
        // logic
    end
endmodule

// 之后
module Example (
    input clk_32M768,
    input clk_enable_1M024,  // 使能信号
    // ...
);
    always @(posedge clk_32M768) begin
        if (clk_enable_1M024) begin
            // logic
        end
    end
endmodule
```

## 注意事项

1. **FIFO/异步模块**:

   - AXIS FIFO 需要特殊处理，因为它们处理跨时钟域
   - 可能需要保持原有的时钟域结构

2. **IP 核**:

   - FIR 滤波器、DDS 等 IP 核可能需要保持原有时钟输入
   - 这些模块可以继续使用 16M384 时钟，因为它们是 Xilinx IP

3. **测试**:
   - 每个模块修改后需要验证功能正确性
   - 特别注意状态机的时序

## 优先级

高优先级（关键路径）:

1. Packetizer.v - Tx 数据路径
2. PSK_Mod.v - Tx 调制
3. PSK_Signal_Extend.v - Rx 信号扩展
4. costas_loop_wrapper.v - Rx 载波恢复

中优先级:

1. PSK_Modulation_wrapper.v
2. NCO 相关模块

低优先级（如果 IP 核可以保持原时钟）:

1. 各种 IP 核的封装
