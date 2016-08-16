Setup Ethereum + Solidity compiler + Truffle + testrpc
======================================================

Follow this guide to install most prerequisites:
https://github.com/czepluch/blockchain-summerschool/blob/master/README.md

Install testrpc using ```npm install -g ethereumjs-testrpc```

Truffle test
------------

Setup local test-server

    testrpc

Create test-project

    mkdir truffle-test
    cd truffle-test
    truffle init

Compile, test and run test-project

    truffle compile
    truffle migrate
    truffle test
    truffle serve

Visit http://localhost:8080 and try it out