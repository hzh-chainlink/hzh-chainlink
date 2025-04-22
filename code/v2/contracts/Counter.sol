// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IMyToken {
    function mint(address to, uint256 amount) external ;
    }
    
contract Counter {
    uint256 public number;
    IMyToken public myToken;

    constructor(address tokenAddress) {
        myToken = IMyToken(tokenAddress);
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
        myToken.mint(msg.sender, 100);
    }
}
