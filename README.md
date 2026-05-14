# BLOCKCHAIN COURSE PROJECT - SMART CONTRACT IMPLEMENTATION

---
## 📚 Course
Blockchain Technologies  

## 📅 Date
28/01/2026  

---

# 📌 PROJECT OVERVIEW

This project demonstrates fundamental smart contract security concepts in Solidity by comparing a vulnerable implementation with a secure implementation of a simple banking system.

The main focus is understanding and preventing **reentrancy attacks**, one of the most critical vulnerabilities in Ethereum smart contracts.

---

# 📂 PROJECT STRUCTURE

1. **VulnerableBank.sol**
   - Demonstrates a reentrancy vulnerability  
   - Uses unsafe pattern: external call before state update  

2. **SecureBankLocal.sol**
   - Secure implementation  
   - Uses reentrancy protection mechanisms  

---

# ⚙️ COMPILATION INSTRUCTIONS

- Open Remix IDE: https://remix.ethereum.org  
- Select Solidity Compiler version **0.8.0+**  
- Compile each `.sol` file separately  

---

# 🧪 TESTING INSTRUCTIONS

1. Deploy contracts using **Remix VM (Shanghai)** environment  
2. Test functions:
   - `deposit()`
   - `withdraw()`
3. Compare behavior between:
   - VulnerableBank
   - SecureBankLocal  

---

# 🔐 SECURITY ANALYSIS

## ❌ VulnerableBank
- Demonstrates **reentrancy vulnerability**
- Follows unsafe pattern:
  - External call before state update  
- Risk: funds can be drained via recursive calls  

---

## ✅ SecureBankLocal
- Implements secure smart contract design  
- Uses:
  - **Checks-Effects-Interactions pattern**
  - Proper state update before external call  
- Prevents reentrancy attacks  

---

# 🎯 KEY LEARNING OUTCOME

This project highlights how small design decisions in smart contracts can have critical security implications, and how proper coding patterns can prevent real-world exploits.

---

# 🧠 SUMMARY

By comparing both contracts, we understand:

- How reentrancy attacks work  
- Why execution order matters in smart contracts  
- How to design secure Ethereum applications  

---

*Built for educational purposes in Blockchain Technologies.*
