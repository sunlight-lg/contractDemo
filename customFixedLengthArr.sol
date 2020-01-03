pragma  solidity ^0.4.24;

contract Test{

      uint256[10] public number=[1,2,3,4,5,6,7,8,9,10];

      uint256 public sum;

      //	-	类型T，⻓度K的数组定义为T[K]，例如：uint	[5]	numbers,		byte	[10]	names;
      //	-	内容可变
      //	-	⻓度不可变，不⽀持push
      //	-	⽀持length⽅法

      function total()public returns(uint256){
            for(uint256 i=0;i<number.length;i++){
                  sum+=number[i];
            }

            return sum;
      }

      function setLen()public{

      }

      function changeValue(uint256 i,uint256 value)public {
            number[i]=value;
      }

      //============================================================================

      bytes10 public helloworldFixed=0x68656c6c6f776f726c64;

      byte[10] public helloworldDynamic =[byte(0x68),0x65,	0x6c,	0x6c,	0x6f,	0x77,0x6f,	0x72,	0x6c,	0x64];

      bytes public b10;

      function setToBytes()public returns(string){
            for(uint256 i=0;i<helloworldDynamic.length;i++){
                  byte b1=helloworldDynamic[i];
                  b10.push(b1);
            }

            return string(b10);
      }

}