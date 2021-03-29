import 'package:flutter/material.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('一覧'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.pushNamed(context, '/post');
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Card(child: ListTile(title: Text('hoge'))),
            Card(child: ListTile(title: Text('hoge'))),
            Card(child: ListTile(title: Text('hoge'))),
          ],
        ));
  }
}
