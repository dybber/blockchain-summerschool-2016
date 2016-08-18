import "Token.sol";
import "Tradeable.sol";
import "Intermediary.sol";

contract BaseIntermediary is Intermediary {
  Token currency;

  struct Offer {
    address seller;
    address buyer;
    Tradeable theContract;
    uint amount;
    bool buyerAccepted;
  }
  
  mapping (address => Offer) offers;

  function BaseIntermediary(Token _currency) {
    currency = Token(_currency);
  }

  // Seller puts contract up for sale
  function receiveOffer(address theContract,
                        address seller,
                        address buyer,
                        uint amount) only(theContract) {
    Tradeable c = Tradeable(theContract);
    
    offers[theContract] = Offer(seller, buyer, c, amount, false);
  }

  // Seller revokes his offer
  function revokeOffer(address theContract) isSellerOf(theContract) {
    Tradeable tradeable = Tradeable(theContract);
    tradeable.saleCancelled();
    delete offers[theContract];
  }

  // Buyer approves, and funds are transferred on hold to the intermediary
  function receiveApproval(address _from, uint256 _value,
                           address _token, address theContract) {
    if(_token != address(currency)) throw;
    if(msg.sender != address(currency)) throw;
    
    Tradeable c = Tradeable(theContract);
    Offer offer = offers[c];
    if (_from != offer.buyer) throw;
    if (_value < offer.amount) throw;

    currency.transferFrom(offer.buyer, this, offer.amount);
    offer.buyerAccepted = true;
  }

  // Buyer approves that the goods are received
  function completeTransaction(address theContract) isBuyerOf(theContract) {
    Tradeable tradeable = Tradeable(theContract);
    Offer offer = offers[theContract];
    if (!offer.buyerAccepted || msg.sender != offer.buyer) {
      throw;
    }

    // Transfer the contract
    tradeable.transferContract();
    
    // Transfer funds
    currency.transferFrom(this, offer.seller, offer.amount);

    delete offers[theContract];
  }

  // Buyer discards the transaction, and receives the money back
  function abortTransaction(address theContract) isBuyerOf(theContract) {
    Tradeable tradeable = Tradeable(theContract);
    // We do 2 look-ups to the same contract, as we also lookup in isBuyerOf
    // - inefficient!
    Offer offer = offers[theContract];
    currency.transferFrom(this, offer.buyer, offer.amount);
    tradeable.saleCancelled();

    delete offers[theContract];
  }

  function () {
    throw;
  }
  
  modifier only (address agent) {
    if (msg.sender != agent) throw;
    else _
  }

  modifier isBuyerOf(address theContract) {
    if (msg.sender != offers[theContract].buyer) throw;
    else _
  }

  modifier isSellerOf(address theContract) {
    if (msg.sender != offers[theContract].seller) throw;
    else _
  }
}
