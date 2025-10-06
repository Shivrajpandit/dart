// Exception handling allows you to gracefully handle errors in your code
// instead of letting the program crash.

void main() {
  // Example 1: Using 'try-catch'
  print('Example 1: Handling a specific exception');
  try {
    // This line will cause an error because you can't divide by zero.
    int result = 10 ~/ 0;
    print('The result is $result'); // This line will not be executed.
  } on UnsupportedError {
    // This 'on' block catches a specific type of error.
    print('Caught an integer division by zero error!');
  } catch (e) {
    // This 'catch' block is a general fallback for any other exceptions.
    print('An unknown error occurred: $e');
  }
  print('Execution continues after the try-catch block.');

  print('\n----------------\n');

  // Example 2: Using 'try-catch' with 'finally'
  print('Example 2: Using the "finally" block');
  try {
    // Let's try something that doesn't cause an error.
    int result = 10 ~/ 2;
    print('The result is $result');
  } catch (e) {
    print('An error occurred: $e');
  } finally {
    // The 'finally' block ALWAYS executes, whether an error occurred or not.
    // It's useful for cleanup code, like closing a file or network connection.
    print('This is the finally block, and it always runs.');
  }

  print('\n----------------\n');

  // Example 3: Throwing your own exception
  print('Example 3: Throwing a custom exception');
  try {
    depositMoney(-100);
  } catch (e) {
    print('Error while depositing: $e');
  }
}

// A custom exception class.
class DepositException implements Exception {
  String errorMessage() {
    return 'Amount cannot be less than zero.';
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    // We use the 'throw' keyword to create an exception.
    throw DepositException();
  }
  print('Depositing $amount...');
}
