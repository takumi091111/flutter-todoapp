import 'package:flutter/material.dart';
import 'icon.dart';

class TodoItem {
  String title;
  bool isDone = false;
  TodoItem({ @required this.title });

  toggle() => isDone = !isDone;
}

class TodoList extends StatefulWidget {
  @override
  TodoListState createState() {
    return TodoListState();
  }
}

class TodoListState extends State<TodoList> {
  List<TodoItem> items = [
    new TodoItem(title: "AAA"),
    new TodoItem(title: "BBB"),
    new TodoItem(title: "CCC")
  ];

  add(item) => setState(() => items.add(item));
  buildItem(item) {
    return TodoListItem(item: item, onTap: (item) {
      setState(() => item.toggle());
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: (items.length * 2),
      itemBuilder: (context, index) {
        if (index.isOdd) return Divider();
        return buildItem(items[index ~/ 2]);
      }
    );
  }
}

class TodoListItem extends StatelessWidget {
  final TodoItem item;
  final void Function(TodoItem) onTap;
  TodoListItem({
    @required this.item,
    @required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(item),
      child: Container(
        child: Row(
          children: <Widget>[
            item.isDone ? DoneIcon() : IncompleteIcon(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
            ),
            Text(
              item.title,
              style: TextStyle(
                fontSize: 24,
                decoration: item.isDone ? TextDecoration.lineThrough : null
              )
            )
          ]
        )
      )
    );
  }
}
