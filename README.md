### String Calculator - TDD Kata

This repository contains the solution for the String Calculator TDD Kata, implemented using Test-Driven Development (TDD) methodology. The code allows you to add a string of numbers and handles various scenarios such as custom delimiters, newlines as separators, and exceptions for negative numbers.

### Requirements Fulfilled

This solution adheres to the requirements of the Incubyte TDD Kata, which include:

## Handle an empty string:

- Returns 0 for an empty string input.

## Handle a single number:

- Returns the number itself for a single number input.

## Handle two numbers:

- Returns the sum of two comma-separated numbers.

## Handle multiple numbers:

- Returns the sum for any number of comma-separated numbers.

## Support custom delimiters:

- The delimiter can be customized by placing it at the start of the input (e.g., //;\n1;2).

## Handle new lines between numbers:

- Supports both commas and newlines as valid separators for numbers.

## Handle negative numbers:

- Throws an exception if negative numbers are detected, listing all negative numbers in the error message.

### Setup and Installation

# Clone this repository:

git clone https://github.com/SaifuddinSiddique/string-calculator-kata.git
cd string-calculator-kata

# Install the necessary gems using bundle (ensure Ruby and Bundler are installed):

- bundle install

# Running Tests

To run the tests for this solution, use RSpec. This will run all the tests and display the results. The test suite can be run with the following command:

- bundle exec rspec

### Test Scenarios

## Here are the test scenarios that have been covered in the RSpec tests:

- Empty String: calculator.add("") returns 0.

- Single Number: calculator.add("1") returns 1.

- Sum of Two Numbers: calculator.add("1,2") returns 3.

- Sum of Multiple Numbers: calculator.add("1,2,3,4") returns 10.

- Support for Custom Delimiters:

- calculator.add("//;\n1;2") returns 3.

- Negative Numbers:

- If input contains negative numbers, it raises an exception: Negative numbers not allowed: -2, -3.

### Code Design

The design is simple and follows TDD principles. The code is structured to handle:

- Empty String: Returns 0 for empty string input.

- Comma-separated Numbers: Returns the sum of all numbers in the string.

- Custom Delimiters: Supports user-defined delimiters (e.g., //;\n).

- Negative Number Handling: Throws an exception with a message listing all negative numbers.

The implementation focuses on readability and ensuring that all edge cases are covered. The logic is modular and makes use of helper methods for delimiter extraction and negative number checks.

### Screenshots

Here are the screenshots of the passing tests:

RSpec Test Output (Example):

![RSpec Test Output](./Screenshot%20from%202025-04-04%2016-58-55.png)

### Conclusion

This solution was built using TDD principles, with each step of the implementation guided by the tests. The tests help to ensure that the code behaves as expected and can handle different input cases and edge scenarios.

### Additional Information

- Programming Language: Ruby

- Test Framework: RSpec

