# ReentrancyGuardPlus modifier 

ReentrancyGuardPlus is ment to be used instead of the popular OpenZeppelin's ReentrancyGuard as a more flexible alternative. Reentrancy guards treat the function that is being protected against reentrancy as the critical section of the code, and apply locking mechanism to hold off the same transaction from calling into the critical section multiple times. This includes the protected function and other functions from calling consecutive calls into the protected function.

## Motivation
The mentioned mechanism works with no problem except for the case that we have multiple functions in the same contract to protect against reentrancy. Although there is a workaround for this by using external functions, we encourage you to use the more straightforward approach of using a more flexible locking mechanism which is ReentrancyGuardPlus.

## Usage
You need to use the `nonReentrant` modifier giving it the function selector of the current function using `this.functionName.selector`.
```
import "https://github.com/mojtaba-eshghie/ReentrancyGuardPlus/blob/master/src/ReentrancyGuardPlus.sol"

contract ExampleContract {
    function exampleFunction() nonReentrant(this.exampleFunction.selector) public {

    }
}
```

## Drawbacks and Limitations
We recognize the following drawbacks and limitations with ReentrancyGuardPlus:
- The gas consumption is more than the original guard from OpenZeppelin.
- This implementation still lacks the possibility of locking for functions that are being overloaded.



## Issues
Feel free to open an issue in case you detect something smelly in the code. 
