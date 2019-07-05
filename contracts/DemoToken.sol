pragma solidity ^0.5.8;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract DemoToken is ERC20, ERC20Detailed, Ownable {
    constructor () public ERC20Detailed("DemoToken", "DMT", 0) {
        _mint(msg.sender, 100 * (10 ** uint256(decimals())));
    }
}