// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;
import "hardhat/console.sol";
contract Example {
    address public owner;
    uint public x = 10;
    bool public locked;
    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner,"Not Owner"); _;
    }

    function sendEther() public onlyOwner{
        console.log("Send Success!");
    }

    modifier validAddress(address _addr) {
        require(_addr != address(0),"Not Valid Address"); _; // address가 0x00000...이 아닌지 검사
    }
    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
        console.log("Success Changing Owner!");
    }
}
