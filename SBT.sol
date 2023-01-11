// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

import "./EIP4973.sol";

contract SBT is ERC4973 {
    address public owner;
    uint256 public count = 0;

    constructor () ERC4973("MyToken", "MTK") {
        owner = msg.sender ;            // the deployer account is the owner and will issue the tokens 
    }
 
   
   //only owner who has issued the token and the owener of the token can revoke the token 
   
   function burn(uint256 _tokenId) external override {
        require(ownerOf(_tokenId) == msg.sender || msg.sender == owner, "You can't revoke this token");    
        _burn(_tokenId);
    }
    
    
    
    //it will issue the token to an specific acccount and can be called only by owner
   
   function issue(address _issuee, string calldata _uri) external onlyOwner {
        _mint(_issuee, count, _uri);  // 
        count += 1;
    }
    //only owner modifier
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }
}
