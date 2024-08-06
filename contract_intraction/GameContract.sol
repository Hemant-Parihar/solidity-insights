// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IUser {
    function createUser(address _userAddress, string memory _name) external;
}

contract GameContract {
    uint public gameCount = 0;
    IUser public userContract;

    constructor(address _userContractAddress) {
        userContract = IUser(_userContractAddress);
    }

    function startGame(string memory username) external {
        userContract.createUser(msg.sender, username);
        gameCount++;        
    }
    
}