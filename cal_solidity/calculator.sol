// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    
    // Event to log the result of an operation
    event CalculationResult(string operation, int256 result);

    function add(int256 a, int256 b) public returns (int256) {
        int256 result = a + b;
        emit CalculationResult("Addition", result);
        return result;
    }

    function subtract(int256 a, int256 b) public returns (int256) {
        int256 result = a - b;
        emit CalculationResult("Subtraction", result);
        return result;
    }

    function multiply(int256 a, int256 b) public returns (int256) {
        int256 result = a * b;
        emit CalculationResult("Multiplication", result);
        return result;
    }

    function divide(int256 a, int256 b) public returns (int256) {
        require(b != 0, "Division by zero");
        int256 result = a / b;
        emit CalculationResult("Division", result);
        return result;
    }
}