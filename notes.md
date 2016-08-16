Summerschool specific
---------------------
 - http://blockchainschool.eu/
 - LinkedIn-group: https://www.linkedin.com/groups/8566385/profile
 - Prerequisites: https://github.com/czepluch/blockchain-summerschool/blob/master/README.md
 - Gitter: https://gitter.im/blockchain-summer-school/support


Various links on blockchain tech and limitation
-----------------------------------------------
 * https://www.weforum.org/reports/the-future-of-financial-infrastructure-an-ambitious-look-at-how-blockchain-can-reshape-financial-services/
 * REA accounting model https://en.wikipedia.org/wiki/Resources,_events,_agents_(accounting_model)
 * CAP theorem https://en.wikipedia.org/wiki/CAP_theorem
 * R3 http://r3cev.com/
 * http://hackingdistributed.com/
 * http://initc3.org/
 * http://raiden.network/ - Scalable payment network
 * https://digitalasset.com/press/introducing-daml.html - Digital Asset Modeling Language
 * https://github.com/HIPERFIT/contracts - HIPERFIT Financial Multi-Party Contracts - and example contracts: https://github.com/HIPERFIT/prototype/tree/master/tests


Various on Ethereum DApp/contract/solidity development
------------------------------------------------------

 * ```truffle init``` - create project for DApp using Truffle (https://github.com/ConsenSys/truffle)
 * ```solc SmartContract.sol``` - compile smart contract to Ethereum bytecode
 * ```solc --gas SmartContract.sol``` - check gas usage of functions in smart contract
 * ```solc --optimize SmartContract.sol``` - optimize gas usage of smart contract functions
 * geth - Ethereum Go client
 * Ethereum average block-time: ~12-17 seconds

Links
-----
 * Ethereum whitepaper: https://github.com/ethereum/wiki/wiki/White-Paper
 * Ethereum yellow-paper: http://gavwood.com/paper.pdf
 * Browser IDE for Solidity: http://ethereum.github.io/browser-solidity
 * Block Explorer: http://etherscan.io
 * Ethereum Network status and statistics: https://ethstats.net/
 * Solidity online Documentation: http://solidity.readthedocs.io
 * Solidity PDF documentation: https://media.readthedocs.org/pdf/solidity/latest/solidity.pdf 

Solidity
--------
 * https://learnxinyminutes.com/docs/solidity/

 * ```constant``` attribute on functions -- annotate that the function
   is not mutating the state (thus not consuming gas?)
 
 * call vs. transaction
   - call: non-mutating function
   - transaction: mutating the state
   
 * ```throw;```: revert/rollback all computations made so far. *ALL* ether sent for gas is lost.

 * All other exceptions raised acts like throw.

 * Division by zero: returns zero.

 * ```return;```: stop execution of function midway through. Nothing
   is rolled back, only consumed ether is lost.

 * modifier: used for validity checks (pre-conditions and
   post-conditions).

   Recommendation: Always use these for assertions/checks.  Use
   contract-oriented programming.

 * ```msg.sender``` - always the address of where the current external
   function call came from

 * "Calls are limited to a depth of 1024, which means that for more complex operations, loops should be preferred over recursive calls."

 * Duck-typing inheritance??!? Or?

 * Gas is only consumed by functions mutating the state?!

Solidity example contracts
--------------------------
 * http://solidity.readthedocs.io/en/latest/solidity-by-example.html
 * https://www.ethereum.org/token
 * https://www.ethereum.org/crowdsale
 * https://www.ethereum.org/dao
