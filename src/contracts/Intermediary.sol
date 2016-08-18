contract Intermediary {
  // The seller makes an offer to a buyer
  function receiveOffer(address theContract, address _seller, address _buyer, uint amount) { }

  // The buyer approves the deal, by transferring funds to the intermediary
  function receiveApproval(address _from, uint256 _value, address _token, address theContract) {}

  // The seller revokes an offer, if the buyer has paid, his money is transferred back
  function revokeOffer(address theContract) {}
  
  // The buyer approves that the goods are received
  function completeTransaction(address theContract) {}

  // The buyer aborts the transaction, the goods are not received
  function abortTransaction(address theContract) {}
}
