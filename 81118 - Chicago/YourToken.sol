pragma solidity ^0.4.18;

// Import the MintableToken contract you just wrote.
import "./MintableToken.sol";

/** Create contract that generates your very own custom ERC20 token with minting capabilities.
 * You'll be "selling" the tokens this contract generates to your classmates using your crowdsale contract.
 * Make sure to inherit functionality from the MintableToken contract.
 * Rename the contract file to the name of your custom token (i.e. EricToken.sol or BuidlDApps.sol or RocketCoin.sol)
 */ 

// Set up your contract. 
contract YourToken is MintableToken {
    // Define 3 public state variables: name, symbol, number of decimals.
    string public constant name = "EricToken"; // solium-disable-line uppercase
    string public constant symbol = "ET"; // solium-disable-line uppercase
    uint8 public constant decimals = 18; // solium-disable-line uppercase

}
