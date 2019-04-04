import 'package:flutter/material.dart';
import '../util/question.dart';
import '../util/quiz.dart';
import '../ui/answer_button.dart';
import '../ui/question_text.dart';
import '../ui/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Column( // This is our Main Page
          children: <Widget>[
            AnswerButton(true, () => print('you answered TRUE') ),
            QuestionText("Pizza is nice", 1),
            AnswerButton(false, () => print('you answered FALSE') ),
          ],
        ),
        CorrectWrongOverlay(false),
      ],
    );
  }
}


