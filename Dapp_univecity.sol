pragma solidity ^0.5.0;
 // pragma experimental ABI

contract DappUnivercity 
{
     
    struct Person {
        uint256 pid;
        string _firstName;
        string _last_Name;
    }
    
    mapping(uint => Person)public people;
    
    uint256 public PeopleCount;
    
    function addPerson(string memory _fn,string memory _ln) public 
    {
        PeopleCount +=1;
        people[PeopleCount] = Person(PeopleCount,_fn,_ln);
    }

}