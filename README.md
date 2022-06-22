# Smart Contracts For Metaverse Builders DAO

This repo consists of smart contracts used by the Metaverse Builders DAO written using [foundry](https://github.com/foundry-rs/foundry)

## Overview of Contracts Used
```ml
src
├─ interfaces
│  ├─ IERC20.sol "Interface for ERC20"
├─ utils
│  ├─ NonTransferrableERC20.sol "Modified ERC20 to prevent transfers/approvals/allowances" 
│  ├─ Ownable.sol "Contract for ownership logic"
├─ MBD.sol "This is the main contract for the token logic"
```