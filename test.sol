pragma  solidity ^0.4.24;

contract test1{
      int8 public i8=10;//成员变量就是状态变量
      int i256=256;

      function add()constant returns(int){
            return i8+i256;
      }

      function isEqual(int a,int b)public pure returns(bool){
            return a==b;
      }

}