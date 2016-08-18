import "Intermediary.sol";
import "Tradeable.sol";

contract BaseTradeable is Tradeable {
  address owner;

  address intermediary = 0x0;
  address receiver     = 0x0;

  function BaseTradeable () {
    owner = msg.sender;
  }

  function getOwner() returns (address) {
      return owner;
  }
  
  function getIntermediary() returns (address) {
    return intermediary;
  }
  
  function makeOffer (address _intermediary, address buyer, uint amount) only(owner) notForSale {
    intermediary = _intermediary;
    receiver = buyer;
    Intermediary i = Intermediary(intermediary);
    i.receiveOffer(this, owner, buyer, amount);
  }

  function saleCancelled () only(intermediary) forSale {
    intermediary = 0x0;
    receiver = 0x0;
  }

  function transferContract () only(intermediary) {
    owner = receiver;
  }

  function () {
    throw;
  }
  
  modifier only (address agent) {
    if (msg.sender != agent) throw;
    else _
  }

  modifier forSale () {
    if (intermediary == 0x0) throw;
    else _
  }

  modifier notForSale () {
    if (intermediary != 0x0) throw;
    else _
  }

}
