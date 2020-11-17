// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;

library LibMetamorphicFactory {
  bytes32 internal constant STORAGE_SLOT = keccak256(
    'solidstate.contracts.storage.MetamorphicFactory'
  );

  struct Layout {
    address metamorphicImplementation;
  }

  function layout () internal pure returns (Layout storage l) {
    bytes32 slot = STORAGE_SLOT;
    assembly { l.slot := slot }
  }
}