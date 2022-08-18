# ReentrancyGuardPlus modifier 

ReentrancyGuardPlus is ment to be used instead of the popular OpenZeppelin's ReentrancyGuard as a more flexible alternative. Reentrancy guards treat the function that is being protected against reentrancy as the critical section of the code, and apply locking mechanism to hold off the same transaction from calling into the critical section multiple times. This includes the protected function and other functions from calling consequtive calls into the protected function.

## Motivation
The mentioned mechanism works with no problem except for the case that we have multiple functions in the same contract to protect against reentrancy. Although there is a workaround for this by using external functions, we encourage you to use the more straightforward approach of using a more flexible locking mechanism which is ReentrancyGuardPlus.

## Usage

## Drawbacks and Limitations
We recognize the following drawbacks and limitations with ReentrancyGuardPlus:
- The gas consumption is more than the original guard from OpenZeppelin.
- This implementation still lacks the possibility of locking for functions that are polymorphic or being overrided.



## Issues
Feel free to open an issue in case you detect something smelly in the code. 