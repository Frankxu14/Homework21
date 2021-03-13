pragma solidity ^0.5.5;

import "./FoxCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";

contract FoxCoinSale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale {

    constructor(uint rate, address payable wallet, FoxCoin token, uint goal, uint open, uint close)
        Crowdsale(rate, wallet, token)
        CappedCrowdsale(goal)
        TimedCrowdsale(open, close)
        RefundableCrowdsale(goal) public {}
}

contract FoxCoinSaleDeployer {

    address public token_sale_address;
    address public token_address;

    constructor(string memory name, string memory symbol, address payable wallet, uint goal) public {
        FoxCoin token = new FoxCoin(name, symbol, 0);
        token_address = address(token);

        FoxCoinSale token_sale = new FoxCoinSale(1, wallet, token, goal, now, now + 15 minutes);
        token_sale_address = address(token_sale);

        token.addMinter(token_sale_address);
        token.renounceMinter();
    }
}
