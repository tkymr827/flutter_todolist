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
            leading: Text("leading"),
            actions: [IconButton(icon: Icon(Icons.add))],
          ),
          body: ListView(
            children: [
              Card(child: ListTile(title: Text("hoge"))),
              Card(child: ListTile(title: Text("hoge"))),
              Card(child: ListTile(title: Text("hoge"))),
              Card(
                child: Center(child: Text("hogehoge")),
              )
            ],
          ),
        ));
  }
}