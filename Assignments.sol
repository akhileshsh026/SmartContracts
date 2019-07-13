pragma solidity ^0.5.0;

contract tryingmapping {
    
    struct Cust  {
        string name;
        uint rating;
        address cust_add;
    }
    
    mapping(string => bool) Cust_name_Mapping;
    
    Cust[] public allCustomers;
    
      function add_Customer(string memory _name,uint _rating,address _cust_add) public payable 
    {
        for(uint i=0;i<allCustomers.length ;i++)
        {
            if(StringComparision(allCustomers[i].name,_name))
            {
                return;
            } else
            {
                allCustomers.length++;
                allCustomers[allCustomers.length -1] = Cust(_name,_rating,_cust_add);
                
            }
        }
    }

    function StringComparision(string memory  _string1,string memory _string2) internal view returns(bool)
    {
          return (keccak256(abi.encodePacked((_string1))) == keccak256(abi.encodePacked((_string2))) );
    }
}