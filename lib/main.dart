import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "一覧",
        home: Scaffold(
          appBar: AppBar(
            title: Text("一覧"),
            actions: [IconButton(icon: Icon(Icons.add))],
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Card(child: ListTile(title: Todos())),
              Card(child: ListTile(title: Text("hoge"))),
              Card(child: ListTile(title: Text("hoge"))),
            ],
          ),
        ));
  }
}

Widget Todos() {
  return Text("moge");
}
