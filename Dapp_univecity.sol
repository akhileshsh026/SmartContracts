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
    
    uint256 opening_time = 1563018969; 
    
    modifier OnlyOwner() {
        require(msg.sender == owner,"You must be an Owner");
        _;
    }
    
    modifier OnlyinTime() {
        require(block.timestamp >= opening_time);
        _;
    }
    
    constructor() public {
        owner = msg.sender;
    }
    
    function addPerson(string memory _fn,string memory _ln) public OnlyOwner OnlyinTime
    {
        IncrementCount();
        people[PeopleCount] = Person(_fn,_ln);
    }
    
    function IncrementCount() internal {
        PeopleCount +=1;
    }

}