import 'package:flutter/material.dart';
import 'pages/list.dart';
import 'pages/post.dart';
import 'pages/detail.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TodoList',
      initialRoute: '/',
      routes: {
        '/': (context) => List(),
        '/post': (context) => Post(),
        '/detail': (context) => Detail(),
      },
    );
  }
}
