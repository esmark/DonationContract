//SPDX-License-Identifier: MIT
pragma solidity >=0.5 <0.9.0;

contract Donation {
  address public owner;
  address public donatorAddress;
  uint256 public donatorAmount;
  uint256 public totalAmount;

  event Sent (address from, address to, uint amount);
  
  constructor() {
    owner = msg.sender;
  }

  function makeDonation() public payable {
    require(msg.value > 0 ether);
    donatorAddress = msg.sender;
    donatorAmount = msg.value;
    totalAmount += donatorAmount;
  }

  function transfer(address receiver, uint amount) public payable {
    require(msg.sender == owner, "Access denied!");
    require(totalAmount > amount, "Transfer amount should be less of Total amount!");
    totalAmount -= amount;
    emit Sent(msg.sender, receiver, amount);
    // payable(owner).transfer(totalAmount);
  }

  function getDonations() public view returns (address,uint256) {
      return (donatorAddress,donatorAmount);
  }
}