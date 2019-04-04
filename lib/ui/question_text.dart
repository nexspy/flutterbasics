import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {

  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);

  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText> with SingleTickerProviderStateMixin {

  Animation<double> _fontSizeAnimation; // values like 0, 0.1, 0.2, .... , 1
  AnimationController _fontSizeAnimationController; // controlls the animation like handler

  @override
  void initState() {
    super.initState();

    // vsync handles animation that goes outside screen
    _fontSizeAnimationController = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _fontSizeAnimation = CurvedAnimation(parent: _fontSizeAnimationController, curve: Curves.linear);
    // listener is used to change state
    _fontSizeAnimation.addListener(() => this.setState(() {}));
    _fontSizeAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.white,
      // for adding padding around a widget, we use this Padding widget
      child: Padding(
        // adding padding on top and bottom only (vertical)
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: Text(
            "Statement " + widget._questionNumber.toString() + " : " + widget._question,
            style: TextStyle(fontSize: _fontSizeAnimation.value*15),
          ),
        ),
      ),
    );
  }
}

