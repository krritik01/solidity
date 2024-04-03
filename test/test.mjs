import { expect } from "chai";
import '@nomiclabs/hardhat-ethers';

describe("Token Contract", function () {
  let Token;
  let hardhatToken;
  let owner;
  let addr1;
  let addr2;
  let addre;

  beforeEach(async function () {
    Token = await ethers.getContractFactory("Token");
    [owner, addr1, addr2, ...addre] = await ethers.getSigners();
    hardhatToken = await Token.deploy();
  });

  describe("Deployment", function () {
    it("Should set the right owner", async function () {
      expect(await hardhatToken.owner()).to.equal(owner.address);
    });

    it("Should assign the total Supply of token to the owner", async function () {
      const ownerBalance = await hardhatToken.checkBalance(owner.address); //check ownerBalance = 10000
      const totalSupply = await hardhatToken.totalSupply(); // Get the total supply as a BigNumber
      expect(totalSupply.toString()).to.equal(ownerBalance.toString()); // Compare total supply directly with owner balance
      //expect(await hardhatToken.totalSupply()).to.equal(ownerBalance);
    });
  });

  describe("Transaction", function () {
    it("Should transfer tokens between accounts", async function () {
      await hardhatToken.transfer(addr1.address, 10); //owner acctoun to addr1.address
      const addr1Balance = await hardhatToken.checkBalance(addr1.address);

      await hardhatToken.connect(addr1).transfer(addr2.address, 5);
      const addr2Balance = await hardhatToken.checkBalance(addr2.address);

      expect(addr2Balance.toString()).to.equal('5')
    });

    it("Should fail if sender does not enough token", async function () {
      const initialOwnerBalance = await hardhatToken.checkBalance(
        owner.address
      );
      await expect(hardhatToken.connect(addr1).transfer(owner.address, 1)).to.be.reverted;
      //initially addr1 has 0 token

      expect(await hardhatToken.checkBalance(owner.address)).to.equal(
        initialOwnerBalance
      );
    });
  });
});

/* this is also a way to write but it has lot of repetition
describe("Token contract", function(){
    it("Deployment should assign the total supply of the token to the owner", async function(){
        const [owner] = await ethers.getSigners();
        const Token = await ethers.getContractFactory("Token"); //create instance contract
        const hardhatToken = await Token.deploy(); //deploy contract
        const ownerBalance = await hardhatToken.checkBalance(owner.address); //check ownerBalance = 10000

        //expect(await hardhatToken.totalSupply()).to.equal(ownerBalance); //This fails to compile and throws error
        // we converted the BigNumber objects to strings before comparing them. This ensures accurate comparison and resolves the failing test.
        const totalSupply = await hardhatToken.totalSupply(); // Get the total supply as a BigNumber
        expect(totalSupply.toString()).to.equal(ownerBalance.toString()); // Compare total supply directly with owner balance
    });

    it("Should transfer tokens between accounts", async function(){
        const [owner, addr1, addr2] = await ethers.getSigners();
        const Token = await ethers.getContractFactory("Token");
        const hardhatToken = await Token.deploy();

        await hardhatToken.transfer(addr1.address, 10); //here we are directly transfer from owner, so we dont use connect
        expect(Number(await hardhatToken.checkBalance(addr1.address))).to.equal(10);

        await hardhatToken.connect(addr1).transfer(addr2.address, 5);//here we use connect so that addr1 connect to addr2
        expect(Number(await hardhatToken.checkBalance(addr2.address))).to.equal(5);
    })
});
*/
