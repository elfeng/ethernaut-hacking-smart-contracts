To make the balance of the Force contract greater than zero, we could either directly send ETH to the Force contract or have the calling contract selfdestruct itself and send its remaining balance to the Force contract.

Approach 1:
Since Force contract does not have a payable fallback function defined, it would not be able to receive any ETH directly sent its way.

Approach 2:
A contract without a payable fallback function can receive ETH as a destination of a selfdestruct and it cannot reject them by design.

Idea is to write a custom contract with a function that calls selfdestruct(address_of_Force_contract), first deposit some ETH to this contract by calling its fallback function, then execute the function call.

To verify balance has been increased to above zero:
await getBalance("0x6ba166580bd6989f2cad8b5245d269b845694baf")
"40.62085832383"

await getBalance("0x4043ed65e25c416c25aad6b46a1c8c01bf1c1c7c")
"0"

await getBalance("0x8281a0a572b0e760cbaa123daebb427aeeaf630a")
"0"

//call (fallback)

await getBalance("0x6ba166580bd6989f2cad8b5245d269b845694baf")
"39.32081624383"

await getBalance("0x4043ed65e25c416c25aad6b46a1c8c01bf1c1c7c")
"1.3"

//call kill()

await getBalance("0x8281a0a572b0e760cbaa123daebb427aeeaf630a")
"1.3"

