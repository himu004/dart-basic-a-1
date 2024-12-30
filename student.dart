

import 'person.dart';
import 'role.dart';

class Student extends Person implements Role {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade, this.courseScores)
      : super(name, age, address) {
    setRole(this);
  }

  double calculateAverageScore() {
    double sum = 0;
    for (double score in courseScores) {
      sum += score;
    }
    return sum / courseScores.length;
  }

  @override
  void displayRole() {
    print("Role: Student");
  }

  void displayStudentInfo() {
    print("Student Information:");
    displayRole();
    print("Name: " + getName());
    print("Age: " + getAge().toString());
    print("Address: " + getAddress());
    print("Average Score: " + calculateAverageScore().toString());
  }
}
