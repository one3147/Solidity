// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract Example {
    struct Todo {
        string text;
        bool completed;
    }
    Todo[] public todos;
    function create(string calldata _text) public {
        todos.push(Todo(_text,false));
        todos.push(Todo({text: _text, completed: false}));

        // 임시로 구조체 사용
        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }
    function get(uint _index) public view returns(string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text,todo.completed);
    }
}
