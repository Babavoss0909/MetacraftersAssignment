// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract kingcoin{

  string public tokenName = "kingcoin"; 
  string public tokenabbrv = "KC" ; 

  uint public  totalsupply = 0; 

  mapping (address=> uint) public balances; 
  
  function mint(address receiver, uint amount) public {
          totalsupply += amount;
          balances[receiver] += amount;
  }

  function burn(address _address, uint amount ) public {
      require(amount <= balances[_address], "the user doesnt have enough kingcoins to destroy");

       totalsupply -= amount;
       balances[ _address] -= amount;
  }

  
}
