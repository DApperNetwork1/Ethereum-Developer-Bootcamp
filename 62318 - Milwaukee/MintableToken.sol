pragma solidity^0.4.18;

// Import OpenZeppelin's StandardToken contract to implement standard token functionality.
import "https://github.com/OpenZeppelin/zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
// Import OpenZeppelin's Ownable contract to provide basic authorization control.
import "https://github.com/OpenZeppelin/zeppelin-solidity/contracts/ownership/Ownable.sol";

/** Create contract that extends the standard ERC20 token contract with minting capabilities.
 *  We've provided you with the pseudocode and some hints to guide you in the right direction.
 *  Some of the initial conditions are written out for you to ease you into writing the contracts.
 *  Make sure to implement the best practices you learned during the Solidity Walkthrough segment.
 *  Check for errors by compiling often. Ask your classmates for help - we highly encourage student collaboration.
 */

// Set up your contract so that it inherits functionality from OpenZeppelin's StandardToken and Ownable.
contract {
    // Create event that logs the receiver address and the amount of the token being minted.
    event Mint(address indexed to, uint256 amount);
    // Create event that logs the completion of token minting.
    event MintFinished();
    
    // Set the initial state to reflect that minting is not finished.
    bool public mintingFinished = false;
    
    // Create modifier that enforces the condition for minting to be available only if minting is not finished.
    modifier canMint() {
        // Require statements are used to check for conditions and throw an exception if the condition isn't met.
        ;
        // _; is used to return the flow of execution to the original function.
        _;
    }
    
    // Create function to mint tokens with 2 parameters: the address that will receive the minted tokens and the amount of tokens to mint.
    // Write the function so that it returns a boolean that indicates if the operation was successful.
    // Make sure to include the appropriate modifers.
    function mint( , ) {
        // Update the state of total token supply by adding the amount of tokens minted.
        totalSupply_ = ;
        // Update the state of the receiving address's token balance by adding the amount of tokens minted.
        balances[_to] = ;
        // Emit the Mint event with appropriate input parameters.
        ;
        // Execute the Transfer function inherited from the StandardToken contract to deliver the minted tokens to the receiver.
        // Transfer function requires 3 parameters: address tokens are coming from, address tokens are going to, amount of tokens.
        Transfer( , , );
        // Indicate that the operation was successful. 
        ;
    }
    
    // Create function to stop minting new tokens. Modifiers modifiers modifiers.
    // Write the function so taht it returns a boolean that indicates if the operation was successful.
    function finishMinting() onlyOwner canMint public returns (bool) {
        // Update initial state to reflect that minting is finished.
        mintingFinished;
        // Emit event that logs the completion of token minting.
        MintFinished();
        // Indicate that the operation was successful.
        return true;
    }
    
}
