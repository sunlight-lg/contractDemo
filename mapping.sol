pragma  solidity ^0.4.24;

contract Test{

      mapping(uint=>string) id_names;

      constructor() public {
            id_names[0x01]="lili";
            id_names[0x02]="tom";
            id_names[0x02]="Lili";
      }
      
      function getNameById(uint id)public returns(string){
            string memory name=id_names[id];
            return name;
      }

      function setNameById(uint id)public returns(string){
            id_names[id]="Hello";
      }

}