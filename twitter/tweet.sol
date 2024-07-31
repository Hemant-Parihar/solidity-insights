// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract tweet {

    struct Tweet {
        address user;
        string content;
        uint256 timeStamp;
        uint256 likes;
    }
    
    mapping(address => Tweet[]) tweetMap;

    function postTweet(string memory _tweetContent) public {
        Tweet memory newTweet = Tweet(msg.sender, _tweetContent, block.timestamp, 0);
        tweetMap[msg.sender].push(newTweet);
    }

    function getAllTweets() public view returns (Tweet[] memory){
        return tweetMap[msg.sender];   
    }
}