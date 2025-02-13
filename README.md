# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient exception handling in asynchronous operations, specifically network requests. The `bug.dart` file shows code that fetches data from a URL.  The `bugSolution.dart` file shows improved exception handling.

## Bug

The original code only prints the exception to the console.  In a production application, more robust error handling is crucial.  Consider more specific error handling based on the type of exception and providing meaningful feedback to the user.

## Solution

The solution provides a more comprehensive approach to handling exceptions by including the following:
* More informative error messages for the user.
* Specific handling of different exception types.
* A way to retry the operation in case of transient errors.

## How to run

1. Clone the repository
2. Navigate to the directory containing the files.
3. Run using the Dart CLI: `dart bug.dart` (then run the solution file).
