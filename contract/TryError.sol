// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract Example {
    function testRequire(uint _i) public pure {
        //require(_i > 10,"Input Must be greater than 10");
    // revert
    if (_i <= 10) {
        revert("Input must be greater than 10");
    }
    assert(_i == 12);
    //assert(number==7);
    }
}
