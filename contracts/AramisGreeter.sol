pragma solidity ^0.4.21;
/* Un langage objet */
contract Mortal {
    address owner;

    constructor() public { owner = msg.sender; }
    function kill() public { if (msg.sender == owner) selfdestruct(owner); }
}

/* De l'héritage */
contract AramisGreeter is Mortal {
    string private greeting;

    constructor() public {
        greeting = "10ème journée - Aramis 2018" ;
    }

    function greet() public constant returns (string) {
        return greeting;
    }
}

