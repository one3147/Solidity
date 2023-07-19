// SPDX-Lisence-Identifier: GPL 3.0
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Example {
    // 정적 배열, 동적 배열
    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    uint[10] public myFixedSizeArr;
    function get(uint i) public view returns(uint) {
        return arr[i];
    }
    function getArr() public view returns(uint[] memory)
    {
        return arr;
    }
    function push(uint i) public {
        arr.push(i); // 동적 배열 확장
    }
    function pop() public{
        arr.pop(); // 동적 배열 축소
    }
    function getLength() public view returns(uint) {
        return arr.length;
    }
    function remove(uint index) public {
        delete arr[index];
    }
}
