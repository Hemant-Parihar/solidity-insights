// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract AccessControl is Ownable {

    constructor () Ownable(msg.sender) {}

    bool public pause = false;
    int16 public mint = 126;

    function pauseMint() public onlyOwner {
        pause = true;
    }

    function unpauseMint() public onlyOwner {
        pause = false;
    }

    function mintNFT() public {
        require(pause == true, 'Mint is paused');
        require(mint <= 0, 'Sold out');
        mint -= 1;
    }
}