// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;


abstract contract CrowdSale {
    // Phases
     enum Phases{ CREATED, VIPSALE, VIPSALE_ENDED, SEEDSALE, SEEDSALE_ENDED, PRIVATESALE, PRIVATESALE_ENDED }

    function currentPhase() public virtual view returns (Phases);
    function lockedBalance(address account) public virtual view returns(uint256);
    function setTimeLock() public virtual;
}
