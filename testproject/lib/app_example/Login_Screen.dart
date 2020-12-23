import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("test"),
          ),
      body: ListView(
        children: <Widget>[
          headerSection,
          titleSection,
          buttonSection,
          // courseSection
        ],
      ),
    ));
  }
}

Widget headerSection = Container(
  height: 250,
  color: Colors.blue,
);
Widget titleSection = Container(
  height: 250,
  color: Colors.red,
);
Widget buttonSection = Container(
  height: 250,
  color: Colors.green,
);
Widget courseSection = Container(
  height: 250,
  color: Colors.yellow,
);
