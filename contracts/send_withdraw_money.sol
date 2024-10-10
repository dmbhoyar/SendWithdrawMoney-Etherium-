// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract SendWithdrawMoney {

    string public status;

    constructor() payable {
        status="ready for transaction";
     }

    function deposit() public payable {
        status = "deposit";
    }

    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
        status = "withdrawAll";
    }

    function withdrawToAddress(address payable to) public {
        to.transfer(getContractBalance());
        status = "withdrawToAddress";
    }
}
