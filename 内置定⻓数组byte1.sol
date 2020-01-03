pragma  solidity ^0.4.24;

contract fixedArray{

      /**
            1.⻓度可以读取	length
            2.⻓度不可以修改
            3.可以通过下标访问
            4.内容不可修改
       */

      //bytes1	...	bytes32
      //bytes1	b1	=	"xy";
      bytes2 b2="xy";

      bytes3	public	b3	=	"xy";
      uint	public	len	=	b3.length;
      //b3.length	=	10;
      bytes8	b8	=	"12345678";
      //b8_0返回0x31，即⼗进制的数字1的ascii值（3*16+1=49）
      bytes1	public	b8_0	=	b8[0];
      //b	=	"HELLO";ERROR，定义之后不可修改
      //b8[1]	=	"0";
      //b8=	"4567";
}