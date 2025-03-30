import 'assignment_class.dart';
import 'user_class.dart';
import 'dart:math';

class Classroom {
  final String id; // e.g. "class01"
  final String name; // e.g. "Beginner Music Theory"
  final String classCode; // e.g. 105-648-805
  final Teacher teacher; // the teacher managing this class
  final List<Student> students; // list of enrolled students
  final List<Assignment> assignments; // assignments for this class

  Classroom({
    required this.id,
    required this.name,
    required this.classCode,
    required this.teacher,
    this.students = const [],
    this.assignments = const [],
  });

  // Add a student to the class
  void addStudent(Student student) {
    students.add(student);
  }

  // Assign homework to the entire class
  void assignHomework(Assignment assignment) {
    assignments.add(assignment);
    // Optional: update each student's list, if you track individually
  }

  static String _generateClassCode() {
    final random = Random();
    const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const numbers = '0123456789';

    String lettersPart = List.generate(3, (index) {
      int randomIndex = random.nextInt(letters.length);
      return letters[randomIndex];
    }).join();

    String numbersPart = List.generate(3, (index) {
      int randomIndex = random.nextInt(numbers.length);
      return numbers[randomIndex];
    }).join();

    // Combine with a dash
    return '$lettersPart-$numbersPart';
  }

  // Example method to get the number of students
  int get studentCount => students.length;
}

void main() {
  String classCode1 = Classroom._generateClassCode();
  Student student1 = Student(id: "65482AX5A", name: "Henning Wölk");
  Student student2 = Student(id: "5495KL566", name: "Andrew Gavin");
  


  print(classCode1);
}