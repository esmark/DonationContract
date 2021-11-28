const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Donation", function () {
  let hardhatDonation;
  let owner;
  let addr1;
  let addr2;

  it("Should return the new donation once it's changed", async function () {
    const Donation = await ethers.getContractFactory("Donation");
    [owner, addr1, addr2] = await ethers.getSigners();

    // To deploy our contract, we just have to call Donation.deploy() and await
    // for it to be deployed(), which happens once its transaction has been mined.    
    hardhatDonation = await Donation.deploy();
    //await hardhatDonation.deployed();
    console.log('Donation contract deployed to:', hardhatDonation.address);
    //const donationBalance = await hardhatDonation.balanceOf(hardhatDonation.address);
    //expect(await hardhatDonation.totalSupply()).to.equal(donationBalance);
  });

  describe("Deployment", function () {
    it("Should set the right owner", async function () {
      // Expect receives a value, and wraps it in an Assertion object. These
      // objects have a lot of utility methods to assert values.

      // This test expects the owner variable stored in the contract to be equal
      // to our Signer's owner.
      expect(await hardhatDonation.owner()).to.equal(owner.address);
      console.log('Owner address:', owner.address); 
    });

    it("Should assign the total supply of tokens to the owner", async function () {
      const contractBalance = await hardhatDonation.getBalance();
      console.log('Contract Balance:', contractBalance); 
    });
  });

  //ToDo: 1. makeDonations from addr1, addr2,
  //2. getBalance by owner
  //3. transfer by owner from contract address to addr2

});
