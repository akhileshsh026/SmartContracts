pragma solidity >= 0.4.0 < 0.5.9;

contract A {
    uint private data;

    function f(uint a) public returns(uint b) { return a + 1; }
    function setData(uint a) public { data = a; }
    function getData() public returns(uint) { return data; }
    function compute(uint a, uint b) public returns (uint) { return a+b; }
}

contract B  {
    function readData() public {
        A a = new A();
        uint local = a.f(70);
        a.setData(3);
        local = a.getData();
        local = a.compute(3, 5);    }
}


contract C is A {
    function g() public {
        A a = new A();
        uint local = a.f(700);
        uint val = compute(3, 5);
}
}