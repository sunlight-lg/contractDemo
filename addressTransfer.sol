pragma  solidity ^0.4.24;

contract Test{

      address public addr1=0x0014723a09acff6d2a60dcdf7aa4aff308fddc160c;
      address public addr0=0x4b0897b0513fdc7c541b6d9d7e929c4e5364d2db;

      /**
      * 1.匿名函数：没有函数名、参数、返回值的函数，就是匿名函数
      * 2.当调⽤⼀个不存在的⽅法时，合约会默认的去调⽤匿名函数
      * 3.当调⽤⼀个不存在的⽅法时，合约会默认的去调⽤匿名函数
      */
      function ()public payable{}

      function getBalance()public view returns(uint256){
            return addr1.balance;
      }

      function getContractBalance()public view returns(uint256){
            return address(this).balance;
      }

      //由合约addr1转账10个币
      function transfer()public{
            /**
             * 1.转账时候单位是wei
             * 2.1ether	=10 ^18 wei	（10的18次⽅）
             * 3.向谁转钱，就⽤谁调⽤tranfer函数
             * 4.花费的是合约的钱
             * 5.向谁转钱，就⽤谁调⽤tranfer函数
             */

            addr1.transfer(10*10**18);
      }

      //send转账与tranfer使⽤⽅式⼀致，但是如果转账⾦额不⾜，不会抛出异常，⽽是会返回false
      function sendTest()public returns(bool){
            return addr1.send(10*10**18);
      }

}