pragma solidity ^0.5.0;
 // pragma experimental ABI

contract DappUnivercity 
{

 mapping(address => uint256) public balances;
 address payable wallet;
 
 
 constructor(address payable _wallet) public
 {
     wallet = _wallet;
 }
 
 //fallback function
 
 function() external {
     BuyTokens();
 }
 
 function BuyTokens() public payable {
     balances[msg.sender] += 1;
     wallet.transfer(msg.value);
 }

}