pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

// HINT: we can have a list of created tokens with their address
// for comparing when a token is created or not, when created make use 
// the address mapped to the token name in a mapping {tokenName: addrress}

// HINT: another thing could be deploy a list of tokens, then on burn or mint, supply token address
contract TokenBase is ERC20 {
  address public admin;

  constructor(string memory name, string memory symbol) ERC20(name, symbol) {
    admin = msg.sender;
  }
}