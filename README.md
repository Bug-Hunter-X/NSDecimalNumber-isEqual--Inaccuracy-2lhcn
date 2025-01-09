# NSDecimalNumber isEqual: Inaccuracy

This repository demonstrates a subtle bug related to the `isEqual:` method of `NSDecimalNumber` in Objective-C.  While two `NSDecimalNumber` instances might represent the same numerical value, `isEqual:` can return `NO` if their internal representations differ.  This can cause unexpected results in comparisons.

The provided code showcases the issue and presents a solution using `compare:` for reliable numerical comparisons.

## Reproducing the Bug

1. Clone this repository.
2. Open the project in Xcode.
3. Run the `NSDecimalNumberBug.m` file.  Observe that the equality check using `isEqual:` fails, even though the numbers are numerically the same.

## Solution

The `NSDecimalNumberBugSolution.m` file provides a corrected approach using the `compare:` method, which offers a more robust way to compare numerical values regardless of their internal representation.