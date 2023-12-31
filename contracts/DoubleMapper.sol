// SPDX-Lisence-Identifier: GPL 3.0
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Example {
    // 2차원 매핑 (Mapping)
    mapping(address => mapping(uint=>bool)) public nested;
    function get(address _addr1, uint _i) public view returns(bool) {
        return nested[_addr1][_i];
    }
    function set(address _addr1, uint _i,bool _boo) public {
        nested[_addr1][_i] = _boo;
    }
    function remove(address _addr1, uint _i) public{
        delete nested[_addr1][_i];
    }
}
