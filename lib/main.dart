import 'package:flutter/material.dart';
import 'package:flutter_todolist/post.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "一覧", home: Contents()
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: Text("一覧"),
        //     actions: [
        //       IconButton(
        //         icon: Icon(Icons.add),
        //         onPressed: () {
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => Post(),
        //               ));
        //         },
        //       )
        //     ],
        //     centerTitle: true,
        //   ),
        //   body: ListView(
        //     children: [
        //       Card(child: ListTile(title: Todos())),
        //       Card(child: ListTile(title: Text("hoge"))),
        //       Card(child: ListTile(title: Text("hoge"))),
        //     ],
        //   ),
        // ),
        );
  }
}

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("一覧 contents"),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Post()),
                );
              },
            )
          ],
        ),
        body: Container(child: Text("body contents")));
  }
}

Widget Todos() {
  return Text("moge");
}
