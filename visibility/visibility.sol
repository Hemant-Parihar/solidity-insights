// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Visibility {

    /*
        Visibility of a state variable.
        1. Public variable can be called by External contract or transaction, with in the same contract or derived contracts.
        2. private variable can only be accessed within the same contract where it is defined.
        3. internal variable is similar to private but is also accessible to derived contracts.
        4. we dont' have external state for a variable.
    */

    uint256 public publicLongNumber = 0;
    uint256 private privateLongNumber = 0;
    uint256 internal internalLongNumber = 0;

    /*
        Visibility of Funcation is similar to variable expect that we can have external function as well.
        External function is similar to public funcation but it can only be accessed by external contracts and transactions and it doesn't return data.
        External function can also be called with in the same contract using this keyword. Like this.externalFunction()
    */

    function publicFunction() public view returns (uint256){
        return publicLongNumber;
    }

    function privateFunction() private view returns (uint256) {
        return privateLongNumber;
    }

    function externalFunction() external pure returns (uint256) {
        return 5;
    }

    function internalFunction() internal pure returns (uint256) {
        return 10;
    }
}

contract DerivedContract is Visibility {
    /*
        Derived Contract is a contract that is inherited from another contract.
        Derived Contract can't access private variables but it can access public variables and internal variables.

    */

    function derivedFunAccessInternalVariable() external view returns (uint256) {
         return internalLongNumber;
    }

    function derivedFunAccessInternalAndPublicFun() external view returns (uint256) {
        uint a = publicFunction() + internalFunction();
        return a;
    }

}