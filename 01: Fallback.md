contribute() function is misleading because you may think that in order to get ownership of the contract you are supposed to have more contributions than that of the initial owner (1000 ether). Well, you may try, however there is a easier way.

Pay attantion to the receive() function, which is a fallback function. It will make you an owner if the require conditions are met. 
(You can learn more about fallback functions here: https://github.com/ethereumbook/ethereumbook/blob/develop/06transactions.asciidoc)

1) In order to make your 'contribution' positive, send any small amount of ether (< 0.001 ether) via contribute() function:

> contract.contribute({value: toWei('0.0001')})

2) Trigger fallback function execution by sending any amount of wei to the contract. Now you are the owner of the contract.

> contract.send({value: 1})

3) In order to reduce the balance of the contract to 0, execute withdraw() function:

> contract.withdraw()

Done!

	
 




