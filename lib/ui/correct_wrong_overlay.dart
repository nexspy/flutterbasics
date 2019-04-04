import 'dart:math';
import 'package:flutter/material.dart';

class CorrectWrongOverlay extends StatefulWidget {

  final bool _isCorrect;

  CorrectWrongOverlay(this._isCorrect);

  @override
  State createState () => CorrectWrongOverlayState();
}

class CorrectWrongOverlayState extends State<CorrectWrongOverlay> with SingleTickerProviderStateMixin {

  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();

    _iconAnimationController = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _iconAnimation = CurvedAnimation(parent: _iconAnimationController, curve: Curves.elasticOut);

    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.black54,
      child: InkWell(
        onTap: () => print('You tapped overlay'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Transform.rotate(
                angle: 2 * pi,
                child: Icon(
                  widget._isCorrect == true ? Icons.done : Icons.clear,
                  size: 80.0,
                ),
              ),
            ),
            Padding(// this padding was added to create space between icon and text
              padding: EdgeInsets.only(bottom: 20.0),// adding padding on bottom only
            ),
            Text(
              widget._isCorrect == true ? 'Correct!' : 'Wrong!',
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            )
          ],
        ),
      ),
    );
  }
}
