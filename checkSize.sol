// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SizeChecker {
    uint public fixedUint = 123456;
    string public str = "Hello, World!";
    uint[] public array = [1, 2, 3, 4, 5];

    function getFixedUintSize() public pure returns (uint) {
        return 32; // uint256 size in bytes
    }

    function getStringLength() public view returns (uint) {
        return bytes(str).length;
    }

    function getArrayLength() public view returns (uint) {
        return array.length;
    }
}