import 'package:flutter/material.dart';
import 'todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: Page(
        title: "Todo App",
        children: <Widget>[
          Expanded(
            child: TodoList()
          )
        ]
      )
    );
  }
}

class Page extends StatelessWidget {
  final String title;
  final List<Widget> children;
  Page({
    @required this.title,
    @required this.children
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: this.children
      )
    );
  }
}
