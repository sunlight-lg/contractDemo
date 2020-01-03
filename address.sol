pragma  solidity ^0.4.24;

contract Test{

      address public addr1=0x0014723a09acff6d2a60dcdf7aa4aff308fddc160c;

      //地址address类型本质上就是一个160位的数字、

      // 可以进行加减，需要强制转换
      function add()public view returns(uint160){
            return uint160(addr1)+10;
      }

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
            //this代表合约当前本身
            //balance方法，获取当前合约余额
            return address(this).balance;
      }

}

contract AddressTest{

      function getBalance()constant public returns(uint){
            return this.balance;
      }

}