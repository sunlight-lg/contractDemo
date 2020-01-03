pragma  solidity ^0.4.24;

contract test{

     string public name="lili";

     function setName()public {
           bytes(name)[0]="L";
     }

     function getLength()public view returns(uint256){
           return bytes(name).length;
     }

     function setLength(uint256 i)public {
           bytes(name).length=i;

           //TODO
     }

}