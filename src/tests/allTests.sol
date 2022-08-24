// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;


// calling f0 should not fail;
contract GuardTester0 is ReentrancyGuardPlus{
    function f0() public nonReentrant(this.f0.selector) {
    }
}


// calling f1 here should fail
contract GuardTester1 is ReentrancyGuardPlus{
    function f1() public nonReentrant(this.f1.selector) {
        f1();
    }

    function f2() public nonReentrant(this.f2.selector) {
    }
}


// calling f1 here should not fail
contract GuardTester2 is ReentrancyGuardPlus{
    function f1() public nonReentrant(this.f1.selector) {
        f2();
    }

    function f2() public nonReentrant(this.f2.selector) {        
    }
}

// TODO: Write two test that checks if this works with
// 1. Polymorphism
// 2. Overrided functions


