// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage, Ownable {
    
    using Counters  for Counters.Counter;

    Counters.Counter private _tokenIds;

    constructor() ERC721("Leadozm","Leado"){}

    function mintNFT(address recepient, string memory tokenURI) public onlyOwner returns(uint256){
       {
            _tokenIds.increment();
            uint256 newItemId = _tokenIds.current();
            _mint(recepient, newItemId);
            _setTokenURI(newItemId, tokenURI);
            return newItemId;
       }
}}




