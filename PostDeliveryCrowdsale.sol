pragma solidity ^0.4.18;

// Import OpenZeppelin's SafeMath contract to prevent overflow/underflow security issues.
import "https://github.com/OpenZeppelin/zeppelin-solidity/blob/master/contracts/math/SafeMath.sol";
// Import the token contract you just wrote.
;
// Import the timed crowdsale contract you just wrote.
;

/** Great job on completing the timed crowdsale contract! 
 *  You will now extend the functionality of your timed crowdsale contract to lock tokens from withdrawal until the crowdsale ends.
 *  Remember to check for errors by compiling often. Ask your classmates for help but at this rate, you're probably more of a help to your classmates than they are to you!
 *  You should be able to deploy your post delivery crowdsale contract onto the testnet and buy/sell your classmates' tokens.
 *  If you found this post delivery crowdsale contract also easy to complete, you should consider mentoring a future DApperNetwork bootcamp.
 */
 
 // Set up your contract with proper inheritance.
contract {
    // Attach SafeMath library functions to the uint256 type.
    ;
    
    // Define the public mapping structure to associate an address as the key and uint256 as the value.
    ;
    
    // Override parent function to store token balances instead of issuing tokens right away.
    function _processPurchase ( , ) {
        // Update the state of the receiving address's token balance by adding the amount of tokens purchased.
        ;
    }
    
    // Create public function that withdraws tokens only after the crowdsale ends.
    function withdrawTokens() {
        // Require the condition that the timed crowdsale is closed.
        ;
        // Define a uint256 variable that is equal to the caller's balance and require that variable to be a positive number.
        ;
        ;
        // Set the caller's balance equal to zero.
        ;
        // Execute the _deliverTokens function.
        _deliverTokens( , );
    }
    
}
