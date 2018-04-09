const assert = require("assert");
const ganache = require("ganache-cli");
const { interface, bytecode } = require("../build");
const Web3 = require("web3");

let web3 = new Web3(ganache.provider());

describe("Contract creation", () => {
  it("succesfully creates the contract", async () => {
    let accounts = await web3.eth.getAccounts();
  });
});
