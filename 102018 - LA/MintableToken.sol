pragma solidity ^0.4.24;

// Import OpenZeppelin's ERC20 contract.
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
// Import OpenZeppelin's Ownable contract.
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/ownership/Ownable.sol";


/** Create contract that extends the standard ERC20 token contract with minting capabilities.
 *  We've provided you with the pseudocode and some hints to guide you in the right direction.
 *  Some of the initial conditions are written out for you to ease you into writing the contracts.
 *  Make sure to implement the best practices you learned during the Solidity Walkthrough segment.
 *  Check for errors by compiling often. Ask your classmates for help - we highly encourage student collaboration.
 */
 
// Set up your contract so that it inherits functionality from OpenZeppelin's StandardToken and Ownable.
contract MintableToken is ERC20, Ownable {

    // Create event that logs the receiver address and the amount of the token being minted.
    event Mint(address indexed to, uint256 amount);
    // Create event that logs the completion of token minting.
    event MintFinished();

    // Set the initial state to reflect that minting is not finished.
    bool private mintingFinished_ = false;

    // Create modifier that enforces the condition for minting to be available only if minting is not finished.
    modifier onlyBeforeMintingFinished() {
        // Require statements are used to check for conditions and throw an exception if the condition isn't met.
        ;
        // _; is used to return the flow of execution to the original function.
        _;
    }

    // Create modifier that allows only the owner of the contract to have permission to take on the role of Minter and mint tokens.
    modifier onlyMinter() {
        require(isOwner());
        _;
    }

    // Create function that returns boolean status of minting process.
    function mintingFinished() public view returns(bool) {
        return mintingFinished_;
    }

    // Create function to mint tokens with 2 parameters: the address that will receive the minted tokens and the amount of tokens to mint.
    // Write the function so that it returns a boolean that indicates if the operation was successful.
    // Make sure to include the appropriate modifers.
    function mint(address _to, uint256 _amount) public onlyMinter onlyBeforeMintingFinished returns (bool) {
        // Call mint function inherited from ERC20 contract which mints inputted amount and assigns it to an account.
        ;
        // Emit the Mint event with appropriate input parameters.    
        ;
        // Indicate that the operation was successful. 
        ;
    }

    // Create function to stop minting new tokens. Modifiers modifiers modifiers.
    // Write the function so that it returns a boolean that indicates if the operation was successful.
    function finishMinting() public onlyOwner onlyBeforeMintingFinished returns (bool) {
        // Update initial state to reflect that minting is finished.
        mintingFinished_ = true;
        // Emit event that logs the completion of token minting.
        emit MintFinished();
        // Indicate that the operation was successful.
        return true;
    }
}
