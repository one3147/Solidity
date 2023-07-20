// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract A {
    function privateFunc() private pure returns(string memory) {
        return "Private";
    }
    function internalFunc() internal pure returns(string memory) {
        return privateFunc();
    }
    function publicFunc() public pure {
        internalFunc();
    }
}
contract B is A{
    function externalFunc() external pure {
        publicFunc();
    }
}

contract C is B{
    B b;
    function AllFunc() public view {
        b.externalFunc();
    }
}
