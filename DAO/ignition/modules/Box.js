const {buildModule} = require("@nomicfoundation/hardhat-ignition/modules");

const timelockAddress = "0xb76B51F0DDF6fBd44CBbBE3E3CfABE78136c4c36";

module.exports = buildModule("Box", (m)=>{
    const box = m.contract("Box", [
        timelockAddress,
    ]);
    
    return {box};
});