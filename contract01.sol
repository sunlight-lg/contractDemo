pragma solidity ^0.4.24;

contract C1{
    uint256 public value;

    constructor(uint256 input) public{
        value=input;
    }

    function getValue()public view returns(uint256){
        return value;
    }

}

contract C2{
    C1 public c1;
}