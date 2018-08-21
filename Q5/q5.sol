pragma solidity ^0.4.18;

contract Token {
    function transfer(address _to, uint _value) public returns (bool);
}

contract TokenCaller {
  function callTransfer(address tokenContract, address _to, uint _value) public {
    Token contractToCall = Token(tokenContract);
    contractToCall.transfer(_to, _value);
  }
}

