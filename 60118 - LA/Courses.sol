pragma solidity ^0.4.21;

contract Courses {
 
 address public ownerAddress;

 struct Instructor {
  uint courseNum;
  string name;
  bool active;
 }

 mapping (address => Instructor) instructors;
 address[] public instructorArray;

 modifier ownerOnly {
  require(msg.sender == ownerAddress);
  _;
 }

 event NewInstructor(address instructor);

 function Courses() public {
  ownerAddress = msg.sender;
 }

 function setInstructor(address _address, uint _courseNum, string _name, bool _active) public {
  Instructor storage instructor = instructors[_address];
  instructor.courseNum = _courseNum;
  instructor.name = _name;
  instructor.active = _active;

  instructorArray.push(_address);
  emit NewInstructor(_address);
 }
 
 function getInstructor(address _address) view public ownerOnly returns (uint, string, bool) {
  return (instructors[_address].courseNum, instructors[_address].name, instructors[_address].active);
 }
}
