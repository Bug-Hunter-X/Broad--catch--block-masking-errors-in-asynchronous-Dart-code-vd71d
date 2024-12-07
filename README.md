# Broad Catch Block in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: using a broad `catch` block that masks the root cause of exceptions. This makes debugging difficult and can lead to unexpected behavior.

## Problem

The provided Dart code fetches data from an API. However, the `catch` block in the `fetchData` function is too broad.  It catches any exception, making it hard to determine the exact reason for failure.  The code might fail due to a network error, a JSON decoding error, or an issue with accessing data from the JSON response, but all are lumped together.

## Solution

The solution involves using more specific exception handling, improving error reporting, and potentially adding timeout mechanisms for network requests to enhance robustness.

## How to run

1. Clone this repository.
2. Make sure you have the `http` package installed (`pub get`).
3. Run the code using a Dart runtime environment.

Observe the output with both the original buggy code and the corrected version.