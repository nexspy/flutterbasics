import './question.dart';

class Quiz {
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;
  String test = "hello";

  Quiz(this._questions) {
    _questions.shuffle();
  }



  // getter function
  List<Question> get question => _questions;
  int get length => _questions.length;
  int get questionNumber => _currentQuestionIndex + 1;
  int get score => _score;

  /**
   * Get next question
   */
  Question get nextQuestion {
    _currentQuestionIndex++;
    if (_currentQuestionIndex >= length) {
      return null;
    } else {
      return _questions[_currentQuestionIndex];
    }
  }

  /**
   * Update score if answer is correct
   */
  void answer(bool isCorrect) {
    if (isCorrect) _score++;
  }



}

