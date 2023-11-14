// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExtendedSupplyChain {
    enum Status { Ordered, Shipped, Delivered }

    struct Order {
        address buyer;
        address seller;
        string product;
        uint256 quantity;
        Status status;
    }

    mapping(uint256 => Order) public orders;
    uint256 public orderCount;
    mapping(address => uint256) public ownership;

    function placeOrder(address seller, string memory product, uint256 quantity) public {
        orderCount++;
        orders[orderCount] = Order(msg.sender, seller, product, quantity, Status.Ordered);
    }

    function shipOrder(uint256 orderId) public {
        require(msg.sender == orders[orderId].seller, "Not authorized");
        require(orders[orderId].status == Status.Ordered, "Invalid order status");
        orders[orderId].status = Status.Shipped;
    }

    function deliverOrder(uint256 orderId) public {
        require(msg.sender == orders[orderId].buyer, "Not authorized");
        require(orders[orderId].status == Status.Shipped, "Invalid order status");
        orders[orderId].status = Status.Delivered;
        ownership[msg.sender]++;
    }
}
