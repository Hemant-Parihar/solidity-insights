// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessControl {

    address public owner;
    bool public paused = false;

    uint8 public mintLeft;
    uint8 public totalMint;

    constructor(uint8 _totalMint) {
        owner = msg.sender;
        totalMint = _totalMint;
        mintLeft = _totalMint;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Only Owner can call this function");
        _;
    }

    modifier whenNotPaused() {
        require(paused == false, "Contract is currently paused");
        _;
    }

    function mint() public whenNotPaused {
        require(totalMint > 0, "All nfts have been minted");
        // minting logic
        // emit event here
        mintLeft--;
    }

    function pauseMint() public onlyOwner whenNotPaused {
        paused = true;
    }

    function unpauseMint() public onlyOwner {
        paused = false;
    }
}