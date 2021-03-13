# Homework Unit 21-Crowd Sale
Frank Xu


In this homework we create an ERC20 token that will be minted through the "Crowdsale.sol" contract, inheriting OpenZeppelin Solidity libraries. The crowdsale contract will deploy, allow users to send ETH and get back PUP (PupperCoin). The "Crowdsale.sol" contract will mint the tokens automatically and distribute them to buyers in one transaction.


Upon deployment, we test  the requirement to enable refunds if the crowdsale is successful and the goal is met. The goal is set to 300ETH. To test the solidity contract without adding fakenow, we test the crowdsale with a closing time of "now + 15 minutes".

The "Crowdsale.sol" inherits by importing OpenZeppelin libraries: "Crowdsale", "CappedCrowdsale", "TimedCrowdsale", 
"RefundableCrowdsale" and "MintedCrowdsale".

Upon delopyment we conduct the crowdsale on the Kovan Testnet.

First in Remix we start a solidity file called "FoxCoin.sol", which imports and inherits token standard ERC20, ERC20Detailed, ERC20Mintable.

Also create the new Solidity contract called "FoxCoinCrowdsale.sol."

For "FoxCoinCrowdsale.sol" contract, the code cites to and inherits OpenZeppelin contracts: "Crowdsale.sol", "MintedCrowdsale.sol", "CappedCrowdsale", "TimedCrowdsale", and "RefundablePostDeliveryCrowdsale".

Provide parameters for all of the features of the crowdsale, including: name, token/coin symbol, wallet, goal. See attached: Screenshot-Foxcoin Contract Deployment.

To test the contract code we assume an exchange rate of 1.

"RefundablePostDeliveryCrowdsale" cites to and inherits the "RefundableCrowdsale" contract constructor, requiring passing a "goal" parameter, 

 
## Deploy and Test The Contract: FoxCoinSaleDeployer

Please see attached: Screenshot-Foxcoin Contract Deployment.
First, deploy contract "Foxcoin" by passing the following constructor:
name: Foxcoin
Symbol: FXC
Initial_supply: 100

The Foxcoin Deployer contract address as deployed:
0x1b0461B6F6115D7133d0A0C674deB99A8E28de50
And Foxcoin Contract address as delopyed:
0x10797654721EfC8705E216Dc7deF58C4Db7f5fdc
See attached: Screenshot-Etherscan Transaction Detail.

Delopy and load from Metamask/wallet account:
0x6895297c0997dfa9f94108E7cB732Cb87e73f432

Also test buyTokens, finalize and  functions from beneficiary address. First, test the crowdsale by sending Ether to the crowdsale from a different account 

## Deploying the Crowdsale

Deploy the Crowdsale Contract to the Kovan  testnet, and store the deployed address:
0x1b0461B6F6115D7133d0A0C674deB99A8E28de50

