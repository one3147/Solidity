// SPDX-Lisence-Identifier: GPL 3.0
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Example {
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    struct Book {
        string title;
        string author;
    }
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title,_author);
    }
}
