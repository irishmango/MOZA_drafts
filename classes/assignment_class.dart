enum AssignmentStatus {
  assigned,
  completed,
  overdue,
}

class Assignment {
  String id;
  String title;
  String description;
  DateTime dueDate;
  AssignmentStatus status;

  Assignment({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.status,
  });

}