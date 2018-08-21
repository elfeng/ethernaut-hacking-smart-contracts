pragma solidity ^0.4.18;

contract ForceCaller {
    
  function kill(address fundRecipient) public {
    selfdestruct(fundRecipient);
  }
  
  function() payable public {
  }
}

