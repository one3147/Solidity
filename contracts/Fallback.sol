// SPDX-Lisence-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract Example {
    uint public Counter;
    event Log(uint gas);
    fallback() external payable {
        emit Log(gasleft());
        Counter += 1;
    }
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}
