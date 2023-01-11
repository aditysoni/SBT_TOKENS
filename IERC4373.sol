// SPDX-License-Identifier: CC0-1.0
pragma solidity ^0.8.6;


interface IERC4973 {

  event Transfer(
    address indexed from, address indexed to, uint256 indexed tokenId
  );
 

  function balanceOf(address owner) external view returns (uint256);
 
  function ownerOf(uint256 tokenId) external view returns (address);
  
  function unequip(uint256 tokenId) external;

  function give(address to, bytes calldata metadata, bytes calldata signature)
    external
    returns (uint256);

  function take(address from, bytes calldata metadata, bytes calldata signature)
    external
    returns (uint256);
 
  function decodeURI(bytes calldata metadata) external returns (string memory);
}
