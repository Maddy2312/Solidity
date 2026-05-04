// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SimpleStorage {
    uint256 public favNum;

    struct Person{
        uint256 fNum;
        string name;
    }

    Person[] public listOfPerson;

    function addPerson(uint256 _fNum, string memory _name) public {
        listOfPerson.push(Person(_fNum, _name));
    }

    function store(uint256 _favNum) public  {
        favNum = _favNum;
        favNum+=1; 
    }

    function retrieve() public view returns (uint256) {
        return favNum;
    }
}