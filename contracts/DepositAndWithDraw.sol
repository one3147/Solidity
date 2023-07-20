// SPDX-Lisence-Identifier: GPL-3.0
pragma solidity ^0.8.13;
import "hardhat/console.sol";
contract Counter {
    address payable public owner;
    constructor() payable {
        owner = payable(msg.sender);
    }
    function deposit() public payable {

    }
    function NotpayableDepisit() public {

    }
    function withdraw() public payable {
        uint amount = address(this).balance; // 현재 주소의 잔고량 가져옴
        console.log(amount / 1 ether,"ETH"); // 이더리움을 기준으로 잔고 출력
        (bool success, ) = owner.call{value: amount}(""); 
        require(success, "Failed to send Other.");
    }
    function transfer(address payable _to, uint _amount) public {
        (bool success,) = _to.call{value: _amount*(1 ether)}("");
        require(success, "Failed to send Other.");
    }
