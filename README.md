# ReentrancyGuardPlus modifier 

ReentrancyGuardPlus is ment to be used instead of the popular OpenZeppelin's ReentrancyGuard as a more flexible alternative. Reentrancy guards treat the function that is being protected against reentrancy as the critical section of the code, and apply locking mechanism to hold off the same transaction from calling into the critical section multiple times. This includes the protected function and other functions from calling consequtive calls into the protected function.

## Motivation
The mentioned mechanism works with no problem except for the case 


## Drawbacks and Limitations