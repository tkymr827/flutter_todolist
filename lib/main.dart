import 'package:flutter/material.dart';
import './list.dart';
import './post.dart';

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
      },
    );
  }
}
