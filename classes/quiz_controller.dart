import 'quiz_class.dart';
import 'user_class.dart';

class QuizController {
  final Student student;
  int currentQuestionIndex = 0;
  List<Quiz> quizzes = [];
  int score = 0;

  QuizController({
    required this.student,
    required this.quizzes,
  });

  // Get the current question
  Quiz getCurrentQuestion() {
    return quizzes[currentQuestionIndex];
  }

  // Check the user's answer and update score/progress
  bool answerQuestion(String userAnswer) {
    Quiz currentQuiz = getCurrentQuestion();
    bool isCorrect = currentQuiz.checkAnswer(userAnswer);

    if (isCorrect) {
      score += 1;
      student.progress += 10; // You can change this logic later
      print('Correct! +10 XP');
    } else {
      print('Incorrect. Try again!');
    }

    // Move to the next question
    nextQuestion();

    // Optional: Save progress to Firebase later
    // FirebaseService.saveStudentProgress(student);

    return isCorrect;
  }

  // Move to the next question
  void nextQuestion() {
    if (currentQuestionIndex < quizzes.length - 1) {
      currentQuestionIndex += 1;
    } else {
      print('Quiz finished!');
      // You can trigger something here like showing results
    }
  }

  // Check if the quiz is finished
  bool isQuizFinished() {
    return currentQuestionIndex >= quizzes.length - 1;
  }

  // Reset the quiz (optional)
  void resetQuiz() {
    currentQuestionIndex = 0;
    score = 0;
  }
}