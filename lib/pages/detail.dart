import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Map data;
  Detail(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('詳細')),
      body: Container(
          child: Column(
        children: [
          Text(data['title']),
          Text(data['content']),
          Text(data['created_at']),
        ],
      )),
    );
  }
}
