// SPDX-License-Identifier: MIT
//OpenZeppelin Contracts v4.4.1 (token/ERC721/extensions/IERC721Metadata.sol)

pragma solidity ^0.8.0;


interface IERC721Metadata {
   
    function name() external view returns (string memory);


    function symbol() external view returns (string memory);

    
    function tokenURI(uint256 tokenId) external view returns (string memory);
}
