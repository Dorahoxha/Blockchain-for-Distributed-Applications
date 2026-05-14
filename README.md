# Smart Contract Security Project

## 📚 Blockchain Technologies  
## 📅 28/01/2026  

---

## 📌 Overview
This project demonstrates smart contract security in Solidity by comparing a vulnerable and a secure banking contract, focusing on reentrancy attacks.

---

## 📂 Contracts
- **VulnerableBank.sol** – shows reentrancy vulnerability (unsafe external call before state update)  
- **SecureBankLocal.sol** – secure version using protection patterns  

---

## ⚙️ Setup (Remix)
- Open: https://remix.ethereum.org  
- Solidity: 0.8.0+  
- Compile each file separately  

---

## 🧪 Testing
- Deploy on Remix VM (Shanghai)  
- Test: `deposit()` and `withdraw()`  
- Compare behavior between both contracts  

---

## 🔐 Security Insight
- VulnerableBank → unsafe external call → reentrancy risk  
- SecureBankLocal → checks-effects-interactions + protection  

---

## 🎯 Key Takeaway
Small changes in execution order can prevent critical smart contract exploits.

---

*Built for Blockchain Technologies coursework* Blockchain Technologies.*
