Nordea
======
R3 and Corda is hot
http://r3cev.com/blog/2016/4/4/introducing-r3-corda-a-distributed-ledger-designed-for-financial-services

NMT (Nordisk Mobiltelefoni) cellphone standard, developed in Lofoten
1981. First fully automatic cellular phone system. Precursor to GSM.

Nordea use-case #1: Know Your Customer
--------------------------------------

 - Used to through physical presence and local knowledge (of your
   local bankadvisor)

 - Now a bank has to understand its customers through digital means

 - Maximize knowledge, minimize customer burden

 - Blockchain could enable customers to maintain control over data
   (and in a central location across accounts in different banks)

Q: Why is a blockchain solution necessary here?

Q: Why not use a federated database?


Nordea use-case #2: (Smart) Letter of Credit
--------------------------------------------

 - https://en.wikipedia.org/wiki/Letter_of_credit

 - Video shown during the presentation: http://www.investopedia.com/video/play/letter-credit/

 - Shorthand: LOC

 - Bank act as guarantee in an order/transfer between two less trusted
   parties.

 - Currently tedious manual work involved, often tailored to the
   individual deal.


Mærsk
=====

Mærsk use-case #1: Transfer of Cargo ownership (Bill of Lading)
---------------------------------------------------------------

### Bill of Lading ("B/L")
 - The **main document in international trade**
 - Act as a Cargo reciept
 - Act as evidence of the contract of carriage
 - Act as title to the cargo, than can be passed on (https://en.wikipedia.org/wiki/Title_(property))

Manifest: aggregate of B/L documents of a ship (https://en.wikipedia.org/wiki/Manifest_(transportation))

Also used by customs, must therefore describe content of containers in
detail.

Unlike today, Mærsk should probably only have the need to know the
content of containers, if it contains dangerous goods, such as
chemicals.

### Minimum requirements

 - Negotiable (the B/L can be sold to anyone)
 - Anonymity needed for traders
 - Can be created without a known buyer/receiver of the cargo
 - No single point of failure
 - Read by all parties along the way
 - Possibility to transform into paper-form (to comply with current legislation)
 - Needs to be compelling enough to actually create a pull (towards
   adoption by all participants in the logistics sector)
 - Overcome regulatory hurdles

Mærsk use-case #2: Tamper proof storage of key documents
--------------------------------------------------------

### Issues with documents on paper
 - Heavy (in weight, and thereby gasoline)
 - Risk of fraud, really easy to fake
 - No standard between countries
 - No standard for electronic exchange of documents
 - High volume of documents
 - Very few cases of fraud gets caught
 - Easy to make errors (which are hard to detect)

### Challenges
 - Safely and tamper proof
 - Flexible wrt. different document requirements
 - Ability to handle amendments
 - Deal with internal processes before approved/released
 - Easy integration with end user systems

Mærsk will share a video describing the many documents involved in a
freight of goods between two countries

**Document handling is more expensive than the cost of
  actual shipping of goods!**

Mærsk currently uses SAP

http://www.cassandra-project.eu/

SKAT
====

Going from public administration towards IT-company

Fun fact: SKAT uses Slack and Github it seems!

### Challenges

 - Parallel systems where we have no control
 - Identities hidden
 - Tax rules in a digital currency world

### Possibilities
 - Automated taxation and VAT
 - Automated end-user control of provenance - keeping track of ownership of goods (see Everledger for diamonds)
 - Transparancy and tamper free database

### Unknowns
 - Standardization (should we start developing now or wait for a standard to emerge?)
 - Multi-chain or protocols
 - Oracles (triggers from the outside)
 - Can a system developed now trigger or move to another system?
 - Proof-of-work or proof-of-stake?
 - Private or public ledger?


SKAT use-case #1: Tax dividend refund
-------------------------------------
Slides: https://magic.piktochart.com/output/14030130-witholding-tax

 - Avoid fraud and double-spending (double-taxation)



SKAT use-case #2: Danish Motor Registry (DMR)
---------------------------------------------
Slides: https://magic.piktochart.com/output/14349797-smart-properties

Similar system for tracking diamonds: http://www.everledger.io/

### Phases
 - Manufacturing
 - Importer
 - Dealer
 - Owner
 - Police/Parking company
 - Transport authority
 - Vehicle Inspection Station (MOT Test/Bilsyn)
 - Insurance company
 - Motor mechanic
 - New owner
 - Scrap dealer

### Challenges
 - How can we represent a car as token?
 - How can we represent money (DKK/Ether?)?
 - How can we perform payments? (Escrow?)
 - Realtime settlement of re-registrations
 - MOT Test (Binsyn, synsrapport)
 - Who are the nodes in the ledger? Public/private ledger?
 - Proof of stake?

We can possibly track if VAT has been payed, and be able to return VAT
payed if a company buys a car from a private owner

We can make sure the new owner performs re-registration immediately
(currently the seller can not force this, and it can be kept
registered in the sellers name for several weeks)

We can store information about accidents, such that it can be proven
whether the car has been in a major accidents (by getting reports from
police and insurance companies). See the US "Vehicle history report":
https://en.wikipedia.org/wiki/Vehicle_history_report

See slide 5.

### Notes from group discussion in Group 6

 - Focus on transfer of ownership
   - from private to private owner
   - from manufacturer to importer/dealer (requiring Escrow)
 - Representation of money, by representing DKK as tokens
 - Representation and registration of car is necessary
   - VIN: Vehicle identification number
   - Registry number (numberplate)
   - Owner
   - History of owners
   - (History of accidents)
   - (Choice of usage: e.g. private or commercial)
   - Payments
   - Approval of payments
 - Representation of payments is necessary
   - Escrow
