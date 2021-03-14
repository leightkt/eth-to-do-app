pragma solidity ^0.5.0;

contract TodoList {
    // state variable
    // public allows us to read the value
    // uint = unsigned integer can't be negative
    uint public taskCount = 0;

    // define own data types with struct
    // model a task
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    // create new state variable to store tasks
    // mapping is like a HASH (stores key value pair)
    mapping(uint => Task) public tasks;

    // seed this shit when smart contract is deployed using constructor
    constructor() public {
        createTask("make dinner");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

    

}