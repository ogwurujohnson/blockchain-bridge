// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import './TokenBase.sol';

contract TokenEth is TokenBase {
  constructor() TokenBase('ETH Token', 'ETK') {}
}