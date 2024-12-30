
import 'person.dart';
import 'role.dart';

class Teacher extends Person implements Role {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address) {
    setRole(this);
  }

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (String course in coursesTaught) {
      print("- " + course);
    }
  }

  void displayTeacherInfo() {
    print("Teacher Information:");
    displayRole();
    print("Name: " + getName());
    print("Age: " + getAge().toString());
    print("Address: " + getAddress());
    displayCoursesTaught();
  }
}
