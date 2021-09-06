// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "./ERC721.sol";
import "./draft-ERC721Permit.sol";
import "./ERC721Votes.sol";
import "./ERC721Wrapper.sol";

contract MyToken is ERC721, ERC721Permit, ERC721Votes, ERC721Wrapper {
    constructor(IERC721 wrappedToken)
        ERC721("MyToken", "MTK")
        ERC721ermit("MyToken")
        ERC721Wrapper(wrappedToken)
    {}

    // The functions below are overrides required by Solidity.

    function _afterTokenTransfer(address from, address to, uint256 amount)
        internal
        override(ERC721, ERC721Votes)
    {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount)
        internal
        override(ERC721, ERC721Votes)
    {
        super._burn(account, amount);
    }
}