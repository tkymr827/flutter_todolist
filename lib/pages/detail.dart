import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;
    print(args);

    return Scaffold(
      appBar: AppBar(
        title: Text('詳細'),
      ),
      body: Container(
        child: Text(args),
        // child: Text('args'),
        // child: Text(args[1]),
      ),
    );
  }
}
