// SPDX-License-Identifier: MIT
pragma solidity >=0.5 <0.9.0;

contract Donation {
  address public owner;
  address[] private donatorAddress;
  uint256[] private donatorAmount;

  constructor() {
    owner = msg.sender;
  }

  function makeDonation() public payable {
    //ToDo: add more currencies: BNB, Matic
    require(msg.value > 0 ether);
    donatorAddress.push(msg.sender);
    donatorAmount.push(msg.value);
  }

  function transfer(address receiver) public payable {
    require(msg.sender == owner, "Access denied! Only Owner can make transfer!");
    payable(receiver).transfer(address(this).balance);
  }

  function getDonators() public view returns (address[] memory) {
    return (donatorAddress);
  }

  function getAmounts() public view returns (uint256[] memory) {
    return (donatorAmount);
  }

  function getBalance() public view returns (uint256) {
    require(msg.sender == owner, "Access denied! Only Owner can see balance!");
    return (address(this).balance);
  }
}