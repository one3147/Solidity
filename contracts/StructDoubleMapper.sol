// SPDX-Lisence-Identifier: GPL 3.0
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Example {
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;
    struct Book {
        string title;
        string author;
    }
    function addBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title,_author);
    }
}
