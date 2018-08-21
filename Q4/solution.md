Idea is to call Telephone.changeOwner() passing in an address (which will become msg.sender) that is not equal to tx.origin (which is my address). This is so that tx.origin != msg.sender and thus ownership will be transferred.

To verify changed owner:
await contract.owner()
"0x6ba166580bd6989f2cad8b5245d269b845694baf"

