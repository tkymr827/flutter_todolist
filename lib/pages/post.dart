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
          TextFormField(
            maxLength: 20,
            decoration: InputDecoration(labelText: 'タイトル'),
          ),
          TextFormField(
            maxLength: 10,
            maxLines: 3,
            decoration: InputDecoration(labelText: '内容'),
          ),
          TextFormField(
            maxLength: 4,
            maxLines: 1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: '削除用パスワード'),
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
  }
}
