import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('投稿')),
      body: FormTemplate(),
    );
  }
}

class FormTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextField(
            maxLength: 20,
            decoration: InputDecoration(labelText: 'タイトル'),
          ),
          TextField(
            maxLength: 10,
            maxLines: 3,
            decoration: InputDecoration(labelText: '内容'),
          ),
          TextField(
            maxLength: 4,
            maxLines: 1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: '削除用パスワード'),
            obscureText: true,
          ),
          RaisedButton(
            onPressed: () {
              print('submit');
            },
            child: Text('submit'),
          )
        ],
      ),
    );
  }
}
