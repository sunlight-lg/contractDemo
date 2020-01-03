pragma  solidity ^0.5.11;

contract Inbox{
    
    //状态变量
    string public message; 

    function Inbox()payable{}

    function setMessage(string newMessage)public{
        //局部变量
        // string a="hello";
        message=newMessage;
    }
        
    function getMessage()public constant returns(string){
        return message;
    }

}