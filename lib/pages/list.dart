import 'package:flutter/material.dart';
import 'package:flutter_todolist/pages/post.dart';

import 'detail.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Post(),
                ),
              );
            },
          ),
        ],
      ),
      body: GetList(),
    );
  }
}

class GetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // const array = ['a', 'b', 'c'];
    dynamic array = {'a': 'apple', 'b': 'banana'};

    return ListView(
      children: [
        Card(
          child: ListTile(
            title: Text('1ban'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Detail('1ban')));
            },
          ),
        ),
        Card(
          child: ListTile(
              title: Text('2ban'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Detail('2ban')));
              }),
        ),
        Card(
          child: ListTile(
              title: Text('3ban'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Detail('3ban')));
              }),
        ),
        Card(
          child: ListTile(
              title: Text('4ban'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Detail('4ban')));
              }),
        ),
      ],
    );
  }
}
