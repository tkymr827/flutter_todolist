import 'package:flutter/material.dart';
import 'pages/list.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TodoList',
      home: List(),
    );
  }
}
