var AramisGreeter = artifacts.require("./AramisGreeter.sol");

module.exports = function(deployer) {
  deployer.deploy(AramisGreeter);
};

