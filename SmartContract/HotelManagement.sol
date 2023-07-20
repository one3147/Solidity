// SPDX-Lisence-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract Hotel {
    address payable public owner;
    uint public counter;
    enum Statuses {
        Vacant,
        Occupied
    }
    Statuses[5] public rooms = [Statuses.Vacant];
    event Occupy(address _occuoant, uint _value);
    Statuses currentStatus;
    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier costs(uint _amount) {
        require(msg.value == _amount*(1 ether), "Invalid Money."); _;
    }

    modifier MaxRooms {
        require(counter < 5,"Not Room."); _;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "You are not Owner."); _;
    }
    uint accountBalance = address(this).balance;
    receive() external payable costs(2) MaxRooms{ //receive : calldata없이 msg를 받을 때 동작하는 함수 (message ether)
        rooms[counter++] = Statuses.Occupied;
        accountBalance += 2 ether;    
        emit Occupy(msg.sender, msg.value);
    }
    function withdraw() public payable onlyOwner{
        owner.transfer(accountBalance);
    }
}
