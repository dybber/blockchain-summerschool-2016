contract Tradeable {
  function getOwner() returns (address) { }
  function getIntermediary() returns (address) {  }

  // Issue an offer to a buyer, using a given intermediary
  function makeOffer (address _intermediary, address buyer, uint amount) {  }

  // Called by intermediary if the sale i cancelled
  function saleCancelled () { }

  // Called by intermediary to transfer ownership
  function transferContract () { }
}
