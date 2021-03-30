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
      body: GetList(),
    );
  }
}

class GetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: ListTile(
            title: Text('1ban'),
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: '1ban');
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text('2ban'),
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: '2ban');
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text('3ban'),
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: '3ban');
            },
          ),
        ),
      ],
    );
  }
}
