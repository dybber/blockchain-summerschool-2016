Trading of contracts on Ethereum
--------------------------------

 - All Tradeable contracts have an owner
 
 - Owners of Tradeable contracts can offer to sell it through any
   intermediary
 
 - Each intermediary uses some Token for currency (e.g. a Token
   representing DKK or Euro)

 - By deriving from the BaseIntermediary we can create an intermediary
   that must always be used when selling Vehicles (a Vehicle
   Registry), which issues number plates and makes sure registration
   is properly updated on sales

 - By deriving from the BaseTradeable class, we can create a Vehicle
   Title (Certificate Of Title)


TODO
----
 - Currently not all functionality is tested
 - No user-interface is implemented (the app-directory contains the files from the default Truffle-project)
 - The Vehicle Registry is not implemented