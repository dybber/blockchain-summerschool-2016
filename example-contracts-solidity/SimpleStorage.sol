// from https://media.readthedocs.org/pdf/solidity/latest/solidity.pdf
contract SimpleStorage {
  uint storedData;
  
  function set(uint x) {
    storedData = x;
  }
  
  function get() constant returns (uint retVal) {
    return storedData;
  }
}
