// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// SECURE CONTRACT - Implements Reentrancy Protection
contract SecureBankLocal {
    mapping(address => uint) public balances;
    bool private locked;

    // Reentrancy Guard Modifier
    modifier nonReentrant() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public nonReentrant {
        uint amount = balances[msg.sender];
        require(amount > 0, "No balance");
        
        // SECURE: State update before external call
        balances[msg.sender] = 0;
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed");
    }

    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}