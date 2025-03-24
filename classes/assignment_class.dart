class Assignment {
  String id;
  String title;
  String description;
  DateTime dueDate;
  bool isSubmitted;

  Assignment({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    this.isSubmitted = false,
  });

}