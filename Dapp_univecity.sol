pragma solidity ^0.5.0;
 // pragma experimental ABI

contract DappUnivercity 
{

 mapping(address => uint256) public balances;
 address payable wallet;
 
 event Purchase (
      address indexed _buyer,
      uint256 _amount
 );
 
 constructor(address payable _wallet) public
 {
     wallet = _wallet;
 }
 
 //fallback function
 
 function() external payable {
     BuyTokens();
 }
 
 function BuyTokens() public payable {
     balances[msg.sender] += 1;
     wallet.transfer(msg.value);
     emit Purchase(msg.sender, 1);
 }

}