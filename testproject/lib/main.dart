import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String ttt = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
      ttest();
      ttpost();
    });
  }

  void ttest() async {
    var url = 'http://localhost:3000';
    var response = await http.get(url);
    print(response.body);
    setState(() {
      ttt = response.body;
    });
    // if (response.statusCode == 200) {
    //   var jsonResponse = convert.jsonDecode(response.body);
    //   var itemCount = jsonResponse['totalItems'];
    //   print('Number of books about http: $itemCount.');
    // } else {
    //   print('Request failed with status: ${response.statusCode}.');
    // }
  }

  void ttpost() async {
    String url = 'http://localhost:3000/api';
    String y = "gg";
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = '{"title": "Hello", "body": "$y", "userId": 1}';
    var response = await http.post(url, headers: headers, body: json);
    print(int.parse(response.body)+2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$ttt',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
