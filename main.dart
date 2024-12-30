import 'student.dart';
import 'teacher.dart';

void main(List<String> args) {
  Student student = Student("John Doe", 20, "123 Main St", "12345", "A", [90, 85, 88, 92]);
  student.displayStudentInfo();

  Teacher teacher = Teacher("Mrs Smith", 35, "456 Oak St", "67890", ["Math", "Science", "History"]);
  teacher.displayTeacherInfo();
}
