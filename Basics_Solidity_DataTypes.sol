pragma solidity ^0.5.0;

contract MyWorld {
    string message;

    function setmessage(string memory newMessage) public {
        message = newMessage;
    } 

    function remove() public {
        selfdestruct(msg.sender);
    }
}

contract dataStructure {
    uint256[] dynamic;
}