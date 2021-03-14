// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import './BridgeBase.sol';

contract BridgeEth is BridgeBase {
  constructor(address token) BridgeBase(token) {}
}