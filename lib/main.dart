import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "this is title",
        home: Scaffold(
            appBar: AppBar(
              title: Text("first"),
            ),
            body: Center(
              child: Text("this is text"),
            )));
  }
}
