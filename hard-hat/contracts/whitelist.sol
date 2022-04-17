
//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelist{
  // initalizing max number of addresses allowed variable 
  uint8 public maxWhitelistedAddresses;

  // creating a maping of 
  // essentially hash map  where we map certain address to true and the others to false
  mapping(address => bool) public whitelistedAddresses;

  uint8 public numAddressesWhitelisted;

   // using constructor set the inital value 
  constructor (uint8 _maxWhitelistedAddresses) {
    maxWhitelistedAddresses = _maxWhitelistedAddresses;
  }


  function  addAddressToWhitelist() public {
    require(!whitelistedAddresses[msg.sender] , "Sender has already been whitelisted" );

         // check if the numAddressesWhitelisted < maxWhitelistedAddresses, if not then throw an error.
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "More addresses cant be added, limit reached");
        // Add the address which called the function to the whitelistedAddress array
        whitelistedAddresses[msg.sender] = true;
        // Increase the number of whitelisted addresses
        numAddressesWhitelisted += 1;
  }
}


