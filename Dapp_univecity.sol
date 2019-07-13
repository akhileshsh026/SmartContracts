pragma solidity ^0.5.0;
 // pragma experimental ABI

contract DappUnivercity 
{
     
     enum State { Start ,Pause ,Stop }
     
     State public state;
     
     constructor () public {
         state = State.Stop;
     }

    function startState() public {
        
        state = State.Start;
    }
    
    function PauseState() public {
        state = State.Pause;
    }
    
    function isStart() public view returns(bool)
    {
         return state == State.Start;
    }

}