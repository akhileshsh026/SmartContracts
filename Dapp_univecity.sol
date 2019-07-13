pragma solidity ^0.5.0;
 // pragma experimental ABI

contract DappUnivercity 
{
     
    struct Person {
        string _firstName;
        string _last_Name;
    }
    
    Person[] public people;
    uint256 public PeopleCount;
    
    function addPerson(string memory _fn,string memory _ln) public 
    {
               people.push(Person(_fn,_ln));
               PeopleCount +=1;
    }

}