# Unhandled Exceptions in Asynchronous Dart

This repository demonstrates a common issue in Dart involving unhandled exceptions within asynchronous functions.  The `fetchData` function showcases a scenario where network errors might occur.  The solution highlights best practices for handling such exceptions.

## Bug

The `bug.dart` file contains code that fetches data from an API.  If an error occurs during the API call (e.g., network issue, server error), the exception is caught but not handled effectively, potentially leading to program instability.

## Solution

The `bugSolution.dart` file provides an improved version of the code where exceptions are gracefully handled.  Instead of just printing the error, it implements more robust error handling that prevents unexpected program termination.