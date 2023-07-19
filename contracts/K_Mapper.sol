// SPDX-Lisence-Identifier: GPL 3.0
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Example {
    // 매핑 (Mapping)
    // Key Type -> Value Type
    //(모든값)-int,bytes,string ..
    // 반복 불가
    mapping(address => uint) public myMap;
    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }
    function get(address _addr) public view returns(uint) {
        return myMap[_addr];
    }
    function remove(address _addr) public {
        delete myMap[_addr];
    }
}
