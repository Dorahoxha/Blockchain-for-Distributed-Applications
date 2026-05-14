// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// VULNERABLE CONTRACT - Demonstrates Reentrancy Vulnerability
contract VulnerableBank {
    mapping(address => uint) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public {
        uint amount = balances[msg.sender];
        // VULNERABILITY: External call before state update
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed");
        balances[msg.sender] = 0; // Too late - vulnerable to reentrancy
    }

    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}