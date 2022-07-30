pragma solidity ^0.8.2;

contract ShortAddressDemo {
    mapping (address => uint256) public balances;

    constructor() public {
        balances[msg.sender] = 1000000000000000000;
    }

}
