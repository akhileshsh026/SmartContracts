pragma solidity ^0.5.0;
 // pragma experimental ABI

contract DappUnivercity 
{
     
    struct Person {
     //   uint256 pid;
        string _firstName;
        string _last_Name;
    }
    
    mapping(uint => Person)public people;
    
    address owner;
    
    uint256 public PeopleCount;
    
    modifier OnlyOwner {
        require(msg.sender == owner,"You must be an Owner");
        _;
    }
    
    constructor() public {
        owner = msg.sender;
    }
    
    function addPerson(string memory _fn,string memory _ln) public OnlyOwner
    {
        IncrementCount();
        people[PeopleCount] = Person(_fn,_ln);
    }
    
    function IncrementCount() internal {
        PeopleCount +=1;
    }

}