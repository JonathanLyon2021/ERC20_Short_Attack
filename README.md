# ERC20_Short_Attack
Exercise from Kingsland University Blockchain Developer Program MI3 - Part5 (Exercise 13)
This is how an ERC20_Short_Attack works:
When a contract receives less data than it was expecting, and Solidity fills the missing bytes with zeros. 
The deployed smart contract cannot prevent this and will interpret those extra zeros as part of the correct value, provoking serious issues.
