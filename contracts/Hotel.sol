// SPDX-Lisence-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract Hotel {
    address payable public owner;
    enum Statuses {
        Vacant,
        Occupied
    }
    event Occupy(address _occuoant, uint _value);
    Statuses currentStatus;
    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }
    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not Enough Money."); _;
    }
    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Not Room."); _;
    }
    receive() external payable costs(2) onlyWhileVacant{ //receive : calldata없이 msg를 받을 때 동작하는 함수 (message ether)
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
