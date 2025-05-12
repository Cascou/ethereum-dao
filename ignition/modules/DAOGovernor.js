const {buildModule} = require("@nomicfoundation/hardhat-ignition/modules");

const tokenAddress = "0x1dffaaC8258BE23B57DC53a5031310d05c007AE6";
const timelockAddress ="0xb76B51F0DDF6fBd44CBbBE3E3CfABE78136c4c36";

module.exports = buildModule("DAOGovernor", (m)=>{
    const governor = m.contract("DAOGovernor", [
        tokenAddress,
        timelockAddress,
    ]);

    return {governor};
});