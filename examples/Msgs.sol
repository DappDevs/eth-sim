pragma solidity ^0.4.21;

contract Msgs
{
  mapping (address => string) msgs;
  
  function write_msg(address _receiver, string _str) public
  {
    msgs[_receiver] = _str;
  }
  
  function read_msg() public view returns (string)
  {
    return msgs[msgs.sender];
  }
}
