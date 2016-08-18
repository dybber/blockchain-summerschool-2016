module.exports = function(deployer) {
  return deployer.deploy(Token, 1000, "Danish Krone", 2, "DKK").then(function () {
     return deployer.deploy(BaseIntermediary, Token.address).then(function () {
       return deployer.deploy(BaseTradeable);
     });
  });
};
