tx.origin is the address of the EOA (Externally Owned Account), which initiates the transaction (e.g. call of the function changeOwner()).
We need to work around this issue since the condition is (tx.origin != msg.sender).

The solution is to call the changeOwner function from another contract. 
In such a case, the tx.origin still will be the address of the EOA that initiated the transaction, however the msg.sender will be the address of the contract that triggered call of the changeOwner function.


