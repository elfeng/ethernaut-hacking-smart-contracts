Idea is to set the state variable top to true. We can achieve this by implementing a Building contract and its isLastFloor() function such that this function returns false the first time it's called and true at the second time of execution. Note that although isLastFloor() is declared as a view function - meaning it has promised not to modify any state - this is not enforced by the compiler, so this is why it's possible to modify the state variable counter in BuildingImpl.

To verify we have reached the top:
>await contract.top()
<true
