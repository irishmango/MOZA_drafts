class Quiz {
  String question;
  String correctAnswer;

  Quiz(this.question, this.correctAnswer);

  bool checkAnswer(String userAnswer) {
    return userAnswer == correctAnswer;
  }
}