// Dart is single-threaded, but it supports asynchronous programming
// to perform long-running tasks (like fetching data from the internet)
// without blocking the main thread.

// This is done using Futures, async, and await.
// A Future represents a value that will be available at some point in the future.

// This function returns a Future that will complete after 2 seconds.
Future<String> fetchUserData() {
  return Future.delayed(const Duration(seconds: 2), () => 'John Doe');
}

// Another async function that simulates fetching a user's bio.
Future<String> fetchUserBio() {
  return Future.delayed(
    const Duration(seconds: 3),
    () => 'Loves Dart and Flutter!',
  );
}

// 'async' and 'await' make asynchronous code look like synchronous code.
Future<void> printUserData() async {
  print('Fetching user data...');
  // The 'await' keyword pauses the execution of this function ONLY
  // until the Future completes. It does not block the rest of the program.
  String userName = await fetchUserData();
  print('Username: $userName');

  // You can await multiple futures.
  String userBio = await fetchUserBio();
  print('User Bio: $userBio');
}

void main() {
  print('Program started.');

  // We call the async function. The main function will continue to execute
  // its next line while 'printUserData' is waiting for the futures.
  printUserData();

  print('Program finished in main. Waiting for async tasks to complete...');

  // Output order will be:
  // 1. Program started.
  // 2. Fetching user data...
  // 3. Program finished in main. Waiting for async tasks to complete...
  // 4. (after 2 seconds) Username: John Doe
  // 5. (after 1 more second) User Bio: Loves Dart and Flutter!
}
