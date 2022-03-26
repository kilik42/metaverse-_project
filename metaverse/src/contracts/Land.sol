//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import  "@openzeppelin/contracts/token/ERC721/ERC721.sol";
contract Land{
   uint256 public cost = 1 ether;
   uint256 public maxSupply = 5;
   uint256 public totalSupply = 0;

   struct Building {
       string name;
       address owner;
       int256 posX;
       int256 posY;
       int256 posZ;
       uint256 sizeX;
       uint256 sizeY;
       uint256 sizeZ;

   }
   Building[] public buildings;

   constuctor(string memory _name, string memory _symbol, uint256 _cost) ERC721(_name, _symbol) {
         name = _name;
         buildings.push(Building("city hall", address(0x0), 0, 0, 0, 10, 10, 10));
         buildings.push(Building("stadium", address(0x0), 0, 10, 0, 10, 5, 3));
         buildings.push(Building("university", address(0x0), 0, -10, 0, 10, 5, 3));
         symbol = _symbol;
         cost = _cost;
   }

   function mint(uint256 _id)public payable{
       //user will pay 1 ether to mint a land
         require(supply <= maxSupply, "max supply reached");
         require(buildings[_id-1].owner = address(0x0), "building does not exist");
         require(msg.value>=1 ether, message("you need to pay 1 ether to buy a land"));
         uint256 supply = totalSupply;
         buildings[_id-1].owner = msg.sender;

        //  24.26
   }
}