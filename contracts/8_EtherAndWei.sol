// SPDX-Lisence-Identifier: GPL 3.0
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Example {
    // Ehter, Wei 단위
    // 1 ether, 10^18 wei
    // 1 wei
    // 1000000000...00 wei = 1 ether
    uint public OneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;
    uint public OneEther = 1 ether;
    bool public isOneEther = 1 ether == 1e18;

    uint public i = 0;
    function forever() public {
        while(true) {
            i++;
        }
    }
}
