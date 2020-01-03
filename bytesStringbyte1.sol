pragma  solidity ^0.4.24;

contract Test{

      bytes10 public b10=0x68656c6c6f776f726c64;
      
      bytes public bs10=new bytes(b10.length);

      //将固定长度数组的值赋值给不定长度数组
      function fixedByteToBytes()public {
            for(uint256 i=0;i<b10.length;i++){
                  bs10[i]=b10[i];
            }
      }

      //将bytes转换成string
      string public str1;

      function bytesToString()public{
            fixedByteToBytes();
            str1=string(bs10);
      }

      //将string转换成bytes
      bytes public bs20;

      function stringToBytes()public{
            bytesToString();
            bs20=bytes(str1);
      }

}