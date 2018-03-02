pragma solidity ^0.4.18;

// Import OpenZeppelin's SafeMath contract to prevent overflow/underflow security issues
import "https://github.com/OpenZeppelin/zeppelin-solidity/blob/master/contracts/math/SafeMath.sol";
// Import the token contract you just wrote.
;

/** This is an assignment to create a basic smart contract that allows you to run your own token crowdsale.
 *  We've provided you with the pseudocode and some hints to guide you in the right direction.
 *  Make sure to implement the best practices you learned during the Solidity Walkthrough segment.
 *  Check for errors by compiling often. Ask your classmates for help - we highly encourage student collaboration.
 *  You should be able to deploy your crowdsale contract onto the public testnet and buy/sell your classmates' tokens.
 *  If you found the basic contract easy, feel free to move on to extending the functionality of your basic crowdsale contract.
 */
 
 // Set up your contract.
 contract {
    // Attach SafeMath library functions to the uint256 type.
    using SafeMath for uint256;
      
    // Define 4 publicly accessible state variables (first one is done for you). 
    // Token being sold.
    ERC20 public token;
    // Wallet address where funds are collected.
    ;  
    // Rate of how many token units a buyer gets per wei. Note that wei*10^-18 converts to ether.
    ;
    // Amount of wei raised.
    ;
    
    /** Create event to log token purchase with 4 parameters:
    * 1) Who paid for the tokens
    * 2) Who got the tokens
    * 3) Number of weis paid for purchase
    * 4) Amount of tokens purchased
    */
    event TokenPurchase( , , , );
    
    /** Create publicly accessible constructor function with 3 parameters:
    * 1) Rate of how many token units a buyer gets per wei
    * 2) Wallet address where funds are collected
    * 3) Address of token being sold
    * Function modifiers are incredibly useful and effective. Make sure to use the right ones for each Solidity function you write.
    */
    function ( , , ) {
    // Set conditions with require statements to make sure the rate is a positive number and the addresses are non-zero.
        ;
        ;
        ;

    // Set inputs as defined state variables
        ;
        ;
        ;
    
    }
    
    // THIS PORTION IS FOR THE CONTRACT'S EXTERNAL INTERFACE.
    // We suggest skipping down to fill out the internal interface before coming back to complete the external interface.
    
    // Create the fallback function that is called whenever anyone sends funds to this contract.
    // Fallback functions are functions without a name that serve as a default function.
    // Functions dealing with funds have a special modifier.
    function () {
        // Call buyTokens function with the address defaulting to the address the message originates from.
        ;
    }
    
    // Create the function used for token purchase with one parameter for the address performing the token purchase.
    function buyTokens( ) {
    
        // Define a uint256 variable that is equal to the number of wei sent with the message.
        ;
        // Call function that validates an incoming purchase.
        ;
        
        // Calculate token amount to be created and define it as type uint256.
        ;
        
        // Update amount of funds raised.
        ;
        
        // Call function that processes a purchase.
        ;
        // Raise the event associated with a token purchase.
        ;
        
        // Call function that updates internal purchasing state.
        ;
        
        // Call function that stores ETH from purchases into a wallet address.
        ;
        // Call function that validates an executed purchase.
        ;
    }
        
    // THIS PORTION IS FOR THE CONTRACT'S INTERNAL INTERFACE.
    // Remember, the following functions are for the contract's internal interface.

    // Create function that validates an incoming purchase with two parameters: beneficiary's address and value of wei.
    function _preValidatePurchase( , ) {
        // Set conditions to make sure the beneficiary's address and the value of wei involved in purchase are non-zero.
        ;
        ;
    }
    
    // Create function that validates an executed purchase with two parameters: beneficiary's address and value of wei.
    function _postValidatePurchase( , ) {
    // Optional extension
    }
    
    // Create function that delivers the purchased tokens with two parameters: beneficiary's address and number of tokens.
    function _deliverTokens( , ) {
        // Use transfer method inherited from imported ERC20 contract.
        token.transfer( , );
    }
    
    // Create function that executes the deliver function when a purchase has been processed with two parameters: beneficiary's address and number of tokens.
    function _processPurchase( , ) {
        ;
    }
    
    // Create function that updates internal purchasing state with two parameters: beneficiary's address and value of wei.
    function _updatePurchasingState( , ) {
    // Optional extension
    }

    // Create function to convert purchase value in wei into tokens with one parameter: value in wei.
    // Write the function so that it returns the number of tokens (value in wei multiplied by defined rate).
    // Multiplication can be done as a method.
    function _getTokenAmount( ) {
        ;
    }
    
    // Create function to store ETH from purchases into a wallet address.
    function _forwardFunds() {
        ;   
    }
    
 }
