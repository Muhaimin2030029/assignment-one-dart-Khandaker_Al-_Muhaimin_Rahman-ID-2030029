Question 1

void main() {
  String name = "John Doe";
  int age = 25;
  double height = 5.9;
  bool isStudent = true;

  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");

  double weight = 70.0;
  double heightInMeters = 1.77;
  double bmi = calculateBMI(weight, heightInMeters);
  print("BMI: ${bmi.toStringAsFixed(1)}");

  int score = 85;
  String grade = getGrade(score);
  print("Grade: $grade");
}

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return 'A';
  } else if (score >= 80 && score <= 89) {
    return 'B';
  } else if (score >= 70 && score <= 79) {
    return 'C';
  } else if (score >= 60 && score <= 69) {
    return 'D';
  } else {
    return 'F';
  }
}
