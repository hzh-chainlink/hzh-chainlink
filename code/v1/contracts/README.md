# V1 - 基础代币与计数器合约

这个版本展示了最基础的智能合约设计，包含：

## `MyToken.sol`
- 基于 OpenZeppelin 的 ERC20 标准实现的代币合约
- 使用 Ownable 进行访问控制，只有所有者可以铸造代币
- 代币名称：MyToken，符号：MTK

## `Counter.sol`
- 简单的计数器功能，包含 `number` 状态变量
- 通过 `increment()` 函数增加计数器值
- 每次调用 `increment()` 时，向调用者铸造 100 个代币
- 使用接口 `IMyToken` 与代币合约交互

## 主要特点
- 展示了合约间的基本交互
- 展示了使用接口进行合约调用
- 展示了 OpenZeppelin 库的基本使用
