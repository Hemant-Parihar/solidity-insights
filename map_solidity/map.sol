// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Map {

    mapping(address => uint256) public balances;

    event Deposit (address indexed sender, uint amount);

    function deposit(uint value) public {
        balances[msg.sender] += value;
        emit Deposit(msg.sender, value);
    }

    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

}