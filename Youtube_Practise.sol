pragma solidity ^0.5.0;

contract Enums  
{
        enum Game {
             keepPlaying,
             pause,
             disucnnected,reconnecting
              }

              Game constant defaultState = Game.keepPlaying ;
}