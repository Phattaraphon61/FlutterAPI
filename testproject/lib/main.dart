
import 'package:flutter/material.dart';
import 'package:testproject/ui/views/home_view.dart';

import 'app_example/Login_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeView(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   String ttt = '';

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//       // ttest();
//       // ttpost();
//     });
//   }

//   void ttest() async {
//     var url = 'http://localhost:8000';
//     var response = await http.get(url);
//     var tt = jsonDecode(response.body);
//     for (var i in tt){
//       print(i);
//     }
//     setState(() {
//       // ttt = response.body;
//     });
//     // if (response.statusCode == 200) {
//     //   var jsonResponse = convert.jsonDecode(response.body);
//     //   var itemCount = jsonResponse['totalItems'];
//     //   print('Number of books about http: $itemCount.');
//     // } else {
//     //   print('Request failed with status: ${response.statusCode}.');
//     // }
//   }

//   void ttpost() async {
//     String url = 'http://localhost:8000/api';
//     String y = "gg";
//     // Map<String, String> headers = {"Content-type": "application/json"};
//     String json = '{"title": "Where", "body": "$y"}';
//     var response = await http.post(url,  body: json);
//     // print(response.body);
//     var tt = jsonDecode(response.body);
//     print(tt);
//     // setState(() {
//     //   ttt = response.body;
//     // });
//     // print(int.parse(response.body)+2);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               '$ttt',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }




