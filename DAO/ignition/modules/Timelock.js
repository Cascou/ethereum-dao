const {buildModule} = require("@nomicfoundation/hardhat-ignition/modules");

const minDelay = 3600; //1 hour
const proposers = [];
const executors = [];
const admin = "0x776D37Ef013eEc8eD43b2F4A7f2916A2a832C7c7";

module.exports = buildModule("TimeLock", (m)=>{
    const timelock = m.contract("TimeLock", [
        minDelay,
        proposers,
        executors,
        admin,
    ]);

    return {timelock};
});