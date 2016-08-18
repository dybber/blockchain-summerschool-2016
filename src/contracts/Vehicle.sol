import "BaseTradeable.sol";

contract Vehicle is BaseTradeable {
	/* Fields */
	uint public numPreviousOwners = 0;
	uint public serialNumber;

	/* Mappings */
	mapping (uint => address) OwnerHistory;

	function Vehicle (uint _serialNumber) {
		serialNumber = _serialNumber;

    // contructor of Tradeable automatically called
	}

  function transferContract (address to) {
    OwnerHistory[numPreviousOwners++] = owner;
    super.transferContract();
  }
}
