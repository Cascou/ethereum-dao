const {buildModule} = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("DAOToken", (m)=>{
    const DaoToken = m.contract("DAOToken");

    return {DaoToken};
});