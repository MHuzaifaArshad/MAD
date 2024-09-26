import 'dart:io';

void main() {
  print('Please enter your age:');

  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Error: No input provided. Please enter a valid age.');
    return;
  }

  try {
    int age = int.parse(input);

    if (age < 0) {
      print('Error: Age cannot be negative. Please enter a valid age.');
    } else if (age > 100) {
      print('You are already 100 years old or more! Congratulations!');
    } else {
      int yearsLeft = 100 - age;
      print('You have $yearsLeft years left until you turn 100.');
    }
  } catch (e) {
    print('Error: Invalid input. Please enter a valid number.');
  }
}
