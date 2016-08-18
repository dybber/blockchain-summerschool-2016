contract('BaseTradeable', function(accounts) {
    it("sets owner on creation", function() {
        var seller = accounts[0];
        return BaseTradeable.new({from : seller}).then(function(tradeable) {
            return tradeable.getOwner.call({from : seller}).then(function(ownerReturned) {
                assert.equal(seller, ownerReturned.valueOf(), "creator is not set as owner");
            });
        });
    });
    
    it("sets intermediary when makeOffer is called", function() {
        var intermediary = BaseIntermediary.deployed();
        var seller = accounts[0];
        var buyer = accounts[1];
        
        return BaseTradeable.new({from : seller}).then(function(tradeable) {
            return tradeable.makeOffer(intermediary.address, buyer, 17, { from : seller }).then(function() {
                return tradeable.getIntermediary.call({from : seller}).then(function(intermediaryReturned) {
                    assert.equal(intermediary.address, intermediaryReturned.valueOf(), "intermediary not set on makeOffer");
                });
            });
        });
    });

    it("clears intermediary when saleCancelled() is called by Intermediary", function() {
        var intermediary = BaseIntermediary.deployed();
        var seller = accounts[0];
        var buyer = accounts[1];
        
        return BaseTradeable.new({from : seller}).then(function(tradeable) {
            return tradeable.makeOffer(intermediary.address, buyer, 17, { from : seller }).then(function() {
                return intermediary.revokeOffer(tradeable.address, { from : seller }).then(function() {
                    return tradeable.getIntermediary.call({from : seller}).then(function(intermediaryReturned) {
                        assert.equal(0, intermediaryReturned.valueOf(), "intermediary not erased on revokeOffer");
                    });
                });
            });
        });
    });
});
