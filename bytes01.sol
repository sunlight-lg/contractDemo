pragma  solidity ^0.4.24;

contract test{

      bytes public name;

      function getLen()public view returns(uint256){
            return name.length;
      }
      
      //1.可以不分空间，直接进行字符串赋值，会自动分配空间
      function setValue(bytes input)public{
            name=input;
      }

      //2.如果未分配空间，使用下标访问会访问越界报错
      function getByIndex(uint256 i)public view returns(byte){
            return name[i];
      }

      //3.可以设置长度，自动分配空间，并且初始化为0
      function setLen(uint256 len)public{
            name.length=len;
      }

      //4.可以通过下标进行数据修改
      function setValue2(uint256 i)public{
            name[i]="h";
      }

      //5.支持push操作，在bytes最后面追加元素
      function pushData()public{
            name.push('h');
      }
}