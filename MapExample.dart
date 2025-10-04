// Maps are objects that store data as key-value pairs.
// Each key must be unique.

void main() {
  // Creating a Map.
  // This map stores student names (String) and their scores (int).
  var studentScores = {'Alice': 95, 'Bob': 88, 'Charlie': 72};

  print('Initial map of student scores: $studentScores');

  // Accessing a value using its key.
  int? bobsScore = studentScores['Bob'];
  print("Bob's score is: $bobsScore");

  // Adding a new entry.
  studentScores['David'] = 91;
  print('Map after adding David: $studentScores');

  // Updating an existing entry.
  studentScores['Charlie'] = 78;
  print('Map after updating Charlie\'s score: $studentScores');

  // Removing an entry.
  studentScores.remove('Bob');
  print('Map after removing Bob: $studentScores');

  // Checking if a key exists.
  print(
    'Does the map contain a score for Alice? ${studentScores.containsKey('Alice')}',
  );

  // Iterating over a map.
  print('\nIterating over all students:');
  studentScores.forEach((name, score) {
    print('$name scored $score');
  });

  // You can also get all keys or values.
  print('\nAll student names (keys): ${studentScores.keys}');
  print('All scores (values): ${studentScores.values}');
}
