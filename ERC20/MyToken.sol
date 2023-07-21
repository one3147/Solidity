// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
pragma solidity ^0.8.13;
contract MyToken is ERC20 {
    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name,symbol) {
        _mint(msg.sender,initialSupply*10**uint(decimals()));
    }
}
