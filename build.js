const solc = require("solc");
const fs = require("fs");
const path = require("path");

const LotteryPath = path.resolve(__dirname, "contracts", "Lottery.sol");

const contractContent = fs.readFileSync(LotteryPath, "utf8");
const compiledContract = solc.compile(contractContent, 1);

module.exports = compiledContract.contracts[":Lottery"];
