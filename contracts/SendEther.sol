// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendEther {
    // Fallback function to receive Ether
    receive() external payable {}

    // Function to transfer Ether to a specific address
    function send(address payable _to, uint256 _amount) external payable {
        require(msg.sender.balance >= _amount, "Insufficient balance");
        require(_to != address(0), "Invalid recipient address");

        _to.transfer(_amount);
    }
}
