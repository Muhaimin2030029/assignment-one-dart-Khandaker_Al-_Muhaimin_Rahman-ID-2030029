Question 2

import 'dart:math';
void main() {
  List<String> students = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  Map<String, int> scores = {};
  Random random = Random();

  for (var student in students) {
    scores[student] = 60 + random.nextInt(41);
  }

  String topStudent = scores.keys.first;
  String lowStudent = scores.keys.first;
  int totalScore = 0;

  for (var entry in scores.entries) {
    totalScore += entry.value;
    if (entry.value > scores[topStudent]!) topStudent = entry.key;
    if (entry.value < scores[lowStudent]!) lowStudent = entry.key;
  }

  double average = totalScore / students.length;

  print("Student Scores:");
  scores.forEach((name, score) {
    print("$name: $score - ${getCategory(score)}");
  });

  print("\nHighest Score: $topStudent (${scores[topStudent]})");
  print("Lowest Score: $lowStudent (${scores[lowStudent]})");
  print("Average Score: ${average.toStringAsFixed(2)}");
}

String getCategory(int score) {
  switch (score ~/ 10) {
    case 10:
    case 9:
      return "Excellent";
    case 8:
      return "Good";
    case 7:
      return "Average";
    default:
      return "Needs Improvement";
  }
}

