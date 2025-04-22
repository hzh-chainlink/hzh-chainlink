# V3 - 集成 Chainlink 预言机与资金功能

这个版本是对 V2 的重大升级，集成了 Chainlink 预言机和资金管理功能：

## `MyToken.sol`
- 保持了与 V2 相同的代币合约和角色管理功能

## `PriceConverter.sol`
- 新增的库合约，用于处理 ETH/USD 价格转换
- 使用 Chainlink 价格预言机获取最新的 ETH/USD 汇率
- 提供工具函数进行价格计算和单位换算

## `Counter.sol`
- 大幅扩展功能，从简单计数器升级为包含资金管理的复杂合约
- 集成 Chainlink 预言机获取 ETH/USD 价格
- 新增 `incrementWithFund()` 函数，要求用户支付最少价值 0.05 USD 的 ETH
- 实现资金追踪系统，记录捐款人和捐款金额
- 增加 `withdraw()` 函数，允许合约所有者提取所有资金
- 遵循 "检查-效果-交互" 模式，提高安全性
- 增加多个 getter 函数，提高透明度和可访问性

## 主要升级点
- 集成实时 ETH/USD 价格数据，展示 Chainlink 预言机的使用
- 添加资金管理功能，包括接收、跟踪和提取资金
- 使用 Gas 优化技术，如 `constant` 和 `immutable` 关键字
- 改进代码组织，遵循 Solidity 最佳实践
- 添加错误处理和自定义错误类型
- 增强合约安全性，实现更完善的访问控制
