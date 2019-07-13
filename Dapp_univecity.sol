pragma solidity ^0.5.0;
 // pragma experimental ABI

contract DappUnivercity 
{
     string value;
     
     constructor() public 
     {
         value = "Akhilesh";   //default value
     }


     function getValue() public view  returns(string memory)
     {
          return value;
     }

     function setValue(string memory _value) public  {
         
         value = _value;
     }


}