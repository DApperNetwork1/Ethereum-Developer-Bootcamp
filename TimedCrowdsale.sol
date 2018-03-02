pragma solidity ^0.4.18;

// Import OpenZeppelin's SafeMath contract to prevent overflow/underflow security issues.
import "https://github.com/OpenZeppelin/zeppelin-solidity/blob/master/contracts/math/SafeMath.sol";
// Import the crowdsale contract that you just wrote.
;

/** Great job on completing the basic crowdsale contract! 
 *  You will now extend the functionality of your basic crowdsale contract to only accept contributions within a specified time frame.
 *  Remember to check for errors by compiling often. Ask your classmates for help - by now, they should be your friends.
 *  You should be able to deploy your timed crowdsale contract onto the testnet and buy/sell your classmates' tokens.
 *  If you found this timed crowdsale contract also easy to complete, move on to extending the functionality of your timed crowdsale contract.
 */
 
 // Set up your contract with proper inheritance.
 contract {
    // Attach SafeMath library functions to the uint256 type.
    ;
    
    // Define your publicly accessible state variables.
    // The opening time of your timed crowdsale.
    ;
    // The closing time of your timed crowdsale.
    ;
    
    // Create modifier that throws an exception if not in crowdsale time range.
    modifier {
        ;
        ;
    }
    
    // Create publicly accessible constructor function with 2 parameters: opening time and closing time.
    function ( , ) {
        // Set conditions with require statements to make sure the opening time is equal to or later than the current time and the closing time is later than the opening time.
        ;
        ;
        
        // Set inputs as defined state variables
        ;
        ;
    }

    // Create function that checks and returns whether the period in which the crowdsale is open has already elapsed.
    function hasClosed() {
        ;
    }
    
    // Extend the original Crowdsale contract's _preValidatePurchase function with the modifier that requires crowdsale to be within time range.
    function _preValidatePurchase( , ) {
        // Use super to concatenate validations.
        ;
    }
    
 }
