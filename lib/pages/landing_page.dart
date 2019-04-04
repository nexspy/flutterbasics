import 'package:flutter/material.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Material(
          color: Colors.red[800],
          child: InkWell(
            onTap: () => {
              print("im here  ")
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Food",
                  style: TextStyle( color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Nepal",
                  style: TextStyle( color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
      ),
    );
  }
}