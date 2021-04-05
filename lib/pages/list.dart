import 'package:flutter/material.dart';
import 'package:flutter_todolist/pages/post.dart';

import 'detail.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  Map todos = {
    0: {'title': 'title1', 'content': 'content1', 'created_at': '2021-04-05'},
    1: {'title': 'title2', 'content': 'content2', 'created_at': '2021-04-05'},
    2: {'title': 'title3', 'content': 'content3', 'created_at': '2021-04-05'},
    3: {'title': 'title4', 'content': 'content4', 'created_at': '2021-04-05'},
    4: {'title': 'title5', 'content': 'content5', 'created_at': '2021-04-05'},
    5: {'title': 'title6', 'content': 'content6', 'created_at': '2021-04-05'},
    6: {'title': 'title7', 'content': 'content7', 'created_at': '2021-04-05'},
    7: {'title': 'title8', 'content': 'content8', 'created_at': '2021-04-05'},
    8: {'title': 'title9', 'content': 'content9', 'created_at': '2021-04-05'},
    9: {'title': 'title10', 'content': 'content10', 'created_at': '2021-04-05'},
  };

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
                  context, MaterialPageRoute(builder: (context) => Post()));
            },
          ),
        ],
      ),
      // body: ShowList(),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 80,
            color: Colors.cyan,
            child: ListTile(
                title: Text(todos[index]['title']),
                subtitle: Text('投稿日:${todos[index]['created_at']}'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detail()));
                }),
          );
        },
      ),
    );
  }
}

// class ShowList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // final data = [
//     //   Text('1'),
//     //   Text('2'),
//     //   Text('3'),
//     //   Text('4'),
//     // ];
//     return ListView.builder(
//       itemBuilder: (BuildContext context,int index),

//       // children: [
//       //   Card(
//       //     child: ListTile(
//       //       title: Text('1ban'),
//       //       onTap: () {
//       //         Navigator.push(
//       //             context, MaterialPageRoute(builder: (context) => Detail()));
//       //       },
//       //     ),
//       //   ),
//       //   Card(
//       //     child: ListTile(
//       //         title: Text('2ban'),
//       //         onTap: () {
//       //           Navigator.push(
//       //               context, MaterialPageRoute(builder: (context) => Detail()));
//       //         }),
//       //   ),
//       //   Card(
//       //     child: ListTile(
//       //         title: Text('3ban'),
//       //         onTap: () {
//       //           Navigator.push(
//       //               context, MaterialPageRoute(builder: (context) => Detail()));
//       //         }),
//       //   ),
//       //   Card(
//       //     child: ListTile(
//       //         title: Text('4ban'),
//       //         onTap: () {
//       //           Navigator.push(
//       //               context, MaterialPageRoute(builder: (context) => Detail()));
//       //         }),
//       //   ),
//       // ],
//     );
//   }
// }
