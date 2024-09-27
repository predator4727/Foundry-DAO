//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    constructor() Ownable(msg.sender) {}

    function store(uint256 number) public onlyOwner {
        s_number = number;
    }

    function retrieve() public view returns (uint256) {
        return s_number;
    }
}
