pragma solidity ^0.8.0;
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import './IToken.sol';

contracts BridgeBase {
  address public admin;
  IToken public token;
  uint public nonce;
  mapping(uint => bool) public processedNonces;

  enum Step { Burn, Mint }
  event Transfer {
    address from,
    address to,
    uint amount,
    uint date,
    uint nonce,
    Step indexed step
  };

  constructor(address _token) {
    admin = msg.sender;
  }
}
