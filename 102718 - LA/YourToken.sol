pragma solidity ^0.4.24;

// Import the MintableToken contract you just wrote.
import "./MintableToken.sol";

/** Create contract that generates your very own custom ERC20 token with minting capabilities.
 * You'll be "selling" the tokens this contract generates to your classmates using your crowdsale contract.
 * Make sure to inherit functionality from the MintableToken contract.
 * Rename the contract file to the name of your custom token (i.e. EricToken.sol or BuidlDApps.sol or RocketCoin.sol)
 */ 

// Set up your contract. 

contract YourToken is MintableToken {
    // Define 3 public state variables: name, symbol, number of decimals. Make sure decimals are always defined as 18.
    string public constant name = "";
    string public constant symbol = "";
    uint8 public constant decimals = 18;

}
