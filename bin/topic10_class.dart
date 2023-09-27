import 'dart:ffi';

void main(List<String> arguments) {
  // Task 1:
  // student(studentName: "Dastish", secondName: "Fantastish");

  // Task 2:
  // Student student = Student(1, "Mamasita", "Poposita", "2FAS2");
  // student.studentData();

  // Task 3:
  // Marks marks = Marks(15, 10, 100);
  // Student student = Student(2, "name", "secondName", "studentClass", marks);
  // print(student.marks.history);

  // Task 4:
  // NewStudent newStudent = NewStudent(12, "name");
  // print(newStudent.gpa);
  // print(newStudent.name);
  // newStudent.gpa = 23;
  // newStudent.name = "AI";
  //   print(newStudent.gpa);
  // print(newStudent.name);

  // Task 6:
  List<Student> students = [
    Student(1, "name", "secondName", "studentClass", Marks(10, 12, 10)),
    Student(1, "asdasdasd", "aaa", "acsa", Marks(16, 13, 14)),
    Student(1, "daddadad", "bbb", "asd", Marks(54, 11, 13)),
  ];

  students.forEach((element) {
    print(element.name);
    print(element.secondName);
    print(element.studentClass);
    print(element.id);
    print(element.marks.history);
    print(element.marks.it);
    print(element.marks.math);
    print("    ---------       ");
  });
}

// Task 5:
class FifthStudent {
  int? student_id;
  String? student_name;
  int? student_age;
  String? phone_number;
  String? university;

  String? get name {
    return student_name;
  }

  int? get age {
    return student_age;
  }

  int? get id {
    return student_id;
  }

  String? get uni {
    return university;
  }

  String? get number {
    return phone_number;
  }

  FifthStudent(this.phone_number, this.student_age, this.student_id,
      this.student_name, this.university);
  FifthStudent.onlyId(this.student_id);
  FifthStudent.onlyName(this.student_name);
  FifthStudent.onlyNumber(this.phone_number);
  FifthStudent.onlyUniversity(this.university);
  FifthStudent.without();
}

class NewStudent {
  String? name;
  int? gpa;
  NewStudent(this.gpa, this.name);
}

class Marks {
  int? math;
  int? history;
  int? it;
  Marks(this.math, this.history, this.it);
}

class Student {
  int? id;
  String? name;
  String? secondName;
  String? studentClass;
  Marks marks;
  Student(this.id, this.name, this.secondName, this.studentClass, this.marks);

  void student({required String studentName, required String secondName}) {
    print("Student Name: $studentName");
    print("Student Second Name: $secondName");
  }

  void studentData() {
    print("Id of Student is: $id");
    if (studentClass != null && name != null) {
      print("Student name: $name and Student class is: $studentClass");
    }
  }
}
