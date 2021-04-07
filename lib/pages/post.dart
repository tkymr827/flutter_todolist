import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// class Post extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('投稿')),
//       // body: FormTemplate(),
//       body: Test(),
//     );
//   }
// }

class FormTemplate extends StatelessWidget {
  String title = "hoge";
  String content;
  String password;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      child: Column(
        children: [
          Text(title),
          TextFormField(
            maxLength: 20,
            decoration: InputDecoration(
                labelText: 'タイトル', icon: Icon(Icons.subtitles_outlined)),
            onChanged: (value) {},
          ),
          TextFormField(
              maxLength: 10,
              maxLines: 3,
              decoration: InputDecoration(
                  labelText: '内容', icon: Icon(Icons.sms_outlined)),
              onChanged: (value) {
                content = value;
              }),
          TextFormField(
            maxLength: 4,
            maxLines: 1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: '削除用パスワード',
                icon: Icon(Icons.keyboard_hide_outlined)),
            onChanged: (value) {
              password = value;
            },
            obscureText: true,
          ),
          RaisedButton(
            onPressed: _submission,
            child: Text('submit'),
          )
        ],
      ),
    );
  }

  void _submission() {
    print("submit");
    print(title);
    print(content);
    print(password);
  }
}

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  String title = "hoge";
  String content;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('投稿')),
      // body: FormTemplate(),
      body: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          children: [
            Text(title),
            TextFormField(
              maxLength: 20,
              decoration: InputDecoration(
                  labelText: 'タイトル', icon: Icon(Icons.subtitles_outlined)),
              onChanged: (value) {
                setState(() {
                  title = value;
                });
                print(title);
              },
            ),
            TextFormField(
                maxLength: 10,
                maxLines: 3,
                decoration: InputDecoration(
                    labelText: '内容', icon: Icon(Icons.sms_outlined)),
                onChanged: (value) {
                  content = value;
                }),
            TextFormField(
              maxLength: 4,
              maxLines: 1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: '削除用パスワード',
                  icon: Icon(Icons.keyboard_hide_outlined)),
              onChanged: (value) {
                password = value;
              },
              obscureText: true,
            ),
            RaisedButton(
              onPressed: _submission,
              child: Text('submit'),
            )
          ],
        ),
      ),
    );
  }

  void _submission() {
    print("submittest");
    print(title);
    print(content);
    print(password);
  }
}
