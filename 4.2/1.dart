import 'dart:io';

class Student {
  String name;
  String rollNumber;
  String grade;

  Student(this.name, this.rollNumber, this.grade);

  void getDetails() {
    print("Enter student name:");
    name = readLine();
    print("Enter roll number:");
    rollNumber = readLine();
    print("Enter grade:");
    grade = readLine();
  }

  void displayDetails() {
    print("\nStudent Details:");
    print("Name: $name");
    print("Roll Number: $rollNumber");
    print("Grade: $grade");
  }
}

void main() {
  print("Enter the number of students:");
  int n = int.parse(readLine());


  List<Student> students = createStudentList(n);

  print("\nDetails of all students:");
  for (int i = 0; i < n; i++) {
    students[i].displayDetails();
  }
}

String readLine() {
  return stdin.readLineSync()!;
}

List<Student> createStudentList(int n) {
  List<Student> students = [];

  for (int i = 0; i < n; i++) {
    print("\nEnter details for student ${i + 1}:");
    String name = readLine();
    String rollNumber = readLine();
    String grade = readLine();

    students.add(Student(name, rollNumber, grade));
  }

  return students;
}
