pragma  solidity ^0.4.24;

contract ClientReceipt{
      event Deposit(
            address indexed _from,
            uint indexed _id,
            uint _value
      );

      function deposit(uint _id){
            Deposit(msg.sender,_id,msg.value);
      }
}