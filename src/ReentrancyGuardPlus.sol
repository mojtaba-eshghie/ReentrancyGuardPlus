// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;


// This will still lack polymorphysim and overloading support!
// It just works based on function signature to prevent someone from just
// calling the same function with slightly different arguments to trick the 
// modifiers.

contract ReentrancyGuardPlus {
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    mapping (bytes4 => uint256) private _locks;

    event ErrorCatcher(bytes reason);

    constructor() {    
    }

    
    modifier nonReentrant(bytes4 selector) {            
        _nonReentrantBefore(selector);
        _;
        _nonReentrantAfter(selector);
    }

    function _nonReentrantBefore(bytes4 selector) private {        
        uint256 lock = _locks[selector];                
        require(lock != _ENTERED, "ReentrancyGuard: reentrant call");
        _locks[selector] = _ENTERED;
    }

    function _nonReentrantAfter(bytes4 selector) private {
        _locks[selector] = _NOT_ENTERED;
    }
}
