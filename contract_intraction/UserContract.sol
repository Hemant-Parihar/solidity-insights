// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract UserContract {

    struct User {
        address userAddress;
        string name;
    }

    mapping(address => User) public users;

    function createUser(address _userAddress, string memory _name) public {
        require(users[_userAddress].userAddress == address(0), "User already exists");

        User memory newUser = User({userAddress : _userAddress, name : _name});
        users[_userAddress] = newUser;
    }
}