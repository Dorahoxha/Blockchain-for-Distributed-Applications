# Smart Contract Security Project

### Blockchain technologies  
### 28/01/2026  

---

## Overview
This project compares a vulnerable and a secure smart contract implementation in solidity, focusing on reentrancy attacks and how to prevent them.

---

## Contracts

- **Vulnerablebank.sol**  
  Shows a reentrancy vulnerability caused by external calls before state updates  

- **securebanklocal.sol**  
  Secure version using proper protection patterns and safe execution order  

---

## Setup (Remix IDE)

- Open: https://remix.ethereum.org  
- Compiler: solidity 0.8.0+  
- Compile each file separately  

---

## Testing

- deploy using remix vm (shanghai)  
- test functions: deposit() and withdraw()  
- compare behavior between both contracts  

---

## Security notes

- Vulnerablebank → unsafe external call → reentrancy risk  
- Securebanklocal → checks-effects-interactions pattern + protection  

---

## Key takeaway
Small changes in smart contract logic can prevent serious security vulnerabilities.

---

*Built for Blockchain Technologies coursework*
