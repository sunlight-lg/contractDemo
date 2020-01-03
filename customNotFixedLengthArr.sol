pragma  solidity ^0.4.24;

contract Test{

      //第一种创建方式，直接赋值
      uint8[] numbers=[1,2,3,4,5,6,7,8,9,10];

      function pushData(uint8 num)public{
            numbers.push(num);
      }

      function getNumbers()public view returns(uint8[]){
            return numbers;
      }

      //第二种:使用关键字new进行创建，赋值给storage变量数组
      uint8[] numbers2;

      function setNumbers2()public{
            numbers2=new uint8[](7);
            numbers2.length=20;
            numbers2.push(10);
      }

      function getNumbers2()public view returns(uint8[]){
            return numbers2;
      }

      function setNumbers3()public{
           //使⽤new创建的memory类型数组，⽆法改变⻓度
            uint8[] memory numbers3	=new	uint8[](7);
            //uint8[]	memory	numbers3;
            //numbers3.length	=	100;	//⽆法修改
            //numbers3.push(10); 
      }

}