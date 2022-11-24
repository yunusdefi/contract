// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.8.11;

import "./YNS20.sol";
import "./YNS20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple YNS20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `YNS20` functions.
 */
contract Token is YNS20, YNS20Detailed {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public YNS20Detailed("Yunus", "YNS", 18) {
        _mint(msg.sender, 10000000000 * (10 ** uint256(decimals())));
    }
}
