import 'assignment_class.dart';

enum Role { student, teacher }


class User {
  String id;
  String name;
  Role role; // e.g. "student", "teacher"
  int level;

  User({
    required this.id,
    required this.name,
    required this.role,
    this.level = 1,
  });
}


class Student extends User {
  double progress;
  List<Assignment> completedAssignments;

  Student({
    this.progress = 0.0,
    this.completedAssignments = const [],
    required super.id,
    required super.name,
    super.role = Role.student,
    super.level = 1,
  });
}


class Teacher extends User {
  List<Assignment> assignedAssignments;
  List<String> classes; // Example: list of class names or IDs

  Teacher({
    this.assignedAssignments = const [],
    this.classes = const [],
    required super.id,
    required super.name,
    super.role = Role.teacher,
    super.level = 1,
  });
}
