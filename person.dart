
import 'role.dart';

class Person {
  String name;
  int age;
  String address;
  Role? role;

  Person(this.name, this.age, this.address);

  String getName() => name;
  int getAge() => age;
  String getAddress() => address;

  void setRole(Role role) {
    this.role = role;
  }

  void displayRole() {
    if (role != null) {
      role!.displayRole();
    } else {
      print("Role not assigned.");
    }
  }
}
