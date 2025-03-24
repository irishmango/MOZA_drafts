import '../quiz_class.dart';

abstract class DatabaseRepository {
  // Create a new quiz
  void createQuiz(Quiz quiz);

  // Get all quizzes
  List<Quiz> getAllQuizzes();

  // Save quiz results
  void saveQuizResult(QuizResult result);

  // Get quiz results for a specific user
  List<QuizResult> getUserQuizResults(String userId);
}

class MockDatabaseRepository implements DatabaseRepository {
  List<QuizResult> quizResults = [];
  List<Quiz> quizzes = [];

  // Save quiz resultt
  @override
  void saveQuizResult(QuizResult result) {
    quizResults.add(result);
    print("Quiz result saved: $result");
  }

  // Get all quiz results for a user
  @override
  List<QuizResult> getUserQuizResults(String userId) {
    return quizResults.where((result) => result.userId == userId).toList();
  }

  // Create a new quiz and add it to mock database
  @override
  void createQuiz(Quiz quiz) {
    quizzes.add(quiz);
    print("Quiz created: $quiz");
  }

  // Get all quizzes
  @override
  List<Quiz> getAllQuizzes() {
    return quizzes;
  }
}