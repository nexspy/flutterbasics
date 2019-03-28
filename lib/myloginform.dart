import 'package:flutter/material.dart';

class MyLoginForm extends StatefulWidget {
  _MyLoginFormState createState() => _MyLoginFormState();
}

class _MyLoginFormState extends State<MyLoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
//      constraints: new BoxConstraints(
//        minHeight: 250.0,
//      ),
      color: Colors.yellowAccent[100],
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Text(
            'Login',
          ),
          Divider(),
          Container(
            color: Colors.lightBlue[100],
            height: 80.0,
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.lightBlue[200],
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton(
            onPressed: () {},
            padding: const EdgeInsets.all(0.0),
            child: Text(
              'Login',
              style: TextStyle(
//                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}