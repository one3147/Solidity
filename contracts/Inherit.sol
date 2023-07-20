// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract InheritTest {
    // Solidity 상속
    // 다중 상속 지원, is 키워드 사용
    // 오버라이딩은 override 키워드 사용
    // 상속의 순서는 가장 가까운 부모부터 먼 부모까지
    // Diamond Problem을 상속 순서를 통해 해결, 가장 가까운 부모부터 차례대로 상속
/*
    A
   B C
  D   E
*/
    function foo() public pure virtual returns(string memory) {
        return "Inherit!";
    }
}
contract A {
    function foo() public pure virtual returns(string memory) {
        return "A";
    }
}
contract B is InheritTest {
    function foo() public pure virtual override returns(string memory) {
        return "B";
    }
}

contract C is A, B {
    function foo() public pure override(A,B) returns (string memory) {
        return "C";
    }
}


