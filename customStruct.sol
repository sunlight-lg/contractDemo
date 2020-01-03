pragma  solidity ^0.4.24;

contract Test{

      //定义结构之后无分号，与枚举一致
      struct Student{
            string name;
            uint age;
            uint score;
            string sex;
      }

      Student[] public Students;

      //两种赋值方式
      Student public stu1=Student("lili",18,90,"girl");
      Student public stu2=Student({name:"tom",age:18,score:90,sex:"boy"});

      function assign()public{
            Students.push(stu1);
            Students.push(stu2);

            stu1.name="张三";
      }
     
     //使用圆括号抱起来的类型叫做元组<tuple>
     function returnStudent()public view returns(string,uint,uint,string){
           return (stu1.name,stu1.age,stu1.score,stu1.sex);
     }
}