# MATLAB Cell Array Indexing Bug

This repository demonstrates an uncommon bug in MATLAB related to the use of logical indexing with cell arrays. The bug occurs when attempting to access elements of a cell array that may be empty, causing unexpected errors.

## Bug Description
The `myFunction` function attempts to access the first element of a cell array. If the cell array is empty or its first element is empty, it results in an error.  The issue lies in how MATLAB handles logical indexing in this scenario.

## Bug Reproduction
1.  Save the code in `bug.m`.
2.  Run the function with different inputs:
    *   `myFunction({[]})`  will result in an error.
    *   `myFunction({})`   will also result in an error.
    *   `myFunction({1:10})` will return `1`.

## Solution
The solution involves adding a check to ensure the cell array and its first element are not empty before attempting to access the element. The corrected code is available in `bugSolution.m`.

## How to use
1. Clone this repository.
2. Open the `bug.m` file and run it with different inputs to reproduce the bug.
3. Open `bugSolution.m` to see the corrected code.