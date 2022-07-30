pragma solidity ^0.8.2;

contract ShortAddressDemo {
    mapping (address => uint256) public balances;

    constructor() public {
        balances[msg.sender] = 1000000000000000000;
    }

    function transfer(address recipient, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Not enough Balance");
        require(balances[msg.sender] - amount < balances[msg.sender], "Underflow");
        require(balances[recipient] + amount > balances[recipient], "Overflow");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

}
