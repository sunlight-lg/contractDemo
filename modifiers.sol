pragma  solidity ^0.4.24;

contract Test{

      uint256 public value;
      address public owner;

      constructor() public {
            owner=msg.sender;
      }

      modifier onlyOwner(address caller){
            require(caller==owner);

            //_;代表这个修饰器所修饰函数的代码
            _;
      }

      //使用修饰器，将仅管理员可以执行的限定放到函数外面
      function changeValue(uint256 _value) onlyOwner(msg.sender) public{
            value=_value;
      }

}