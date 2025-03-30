enum DifficultyLevel {
  beginner,
  intermediate,
  advanced,
}

enum QuizType {
  multipleChoice,
  audio,
  dragAndDrop,
  textInput,
}

class Quiz {
  String question;
  List<String> options;
  String correctAnswer;
  QuizType type;
  DifficultyLevel difficulty;

  Quiz({
    required this.question,
    required this.options,
    required this.correctAnswer,
    this.type = QuizType.multipleChoice,
    this.difficulty = DifficultyLevel.beginner,
  });

  bool checkAnswer(String userAnswer) {
    return userAnswer.trim().toLowerCase() == correctAnswer.trim().toLowerCase();
  }
}

class QuizResult extends Quiz{
  String userId;
  String quizId;
  int score;

  QuizResult({
    required super.question, 
    required super.options, 
    required super.correctAnswer,
    required this.userId,
    required this.quizId,
    required this.score,
  });
}