import 'quiz_class.dart';
import 'content_block_class.dart';

class Lesson {
  String id;
  String title;
  String description;
  List<ContentBlock> content;
  List<Quiz> quizzes;

  Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.quizzes,
  });
}

