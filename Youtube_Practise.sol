pragma solidity ^0.5.0;
pragma experimental ABI

contract ExampleUpgrad  
{
      struct Instructor {
           uint age;
           bytes name;
           bytes subject;
      }

      mapping (address => Instructor) instructors;
      address[] public intrsuctorsAccounts;

      event intructInfo(
           bytes name,
           bytes subject,
           uint age
      );

      function SetInstructor(address _address , uint _age,bytes _name,bytes _subject) public {
           var instructor = instructors[_address];
           
           instructor.age = _age;
           instructor.name = _name;
           instructor.subject = _subject;

      }

      function getInstructor() public view  returns(address[]) {
                  return intrsuctorsAccounts;
      }
           
      
}