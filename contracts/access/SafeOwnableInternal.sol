// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;

import './SafeOwnableStorage.sol';

abstract contract SafeOwnableInternal {
  using SafeOwnableStorage for SafeOwnableStorage.Layout;

  modifier onlyNomineeOwner () {
    require(
      msg.sender == SafeOwnableStorage.layout().nomineeOwner,
      'SafeOwnable: sender must be nominee owner'
    );
    _;
  }
}