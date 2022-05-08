contribute() function is misleading because you may think that in order to get ownership of the contract you are supposed have more contributions than that of the initial owner (1000 ether). Well, you may try, however there is a better way.

Pay attantion to the receive() function, which is a fallback function. It will make you an owner if the require conditions are met. 
(You can learn more about fallback functions here: https://github.com/ethereumbook/ethereumbook/blob/develop/06transactions.asciidoc)

First, in order to make your 'contribution' positive, send any small amount of ether (< 0.001 ether) via contribute() function:
> > await contract.contribute({value: toWei('0.0001')})
> 


