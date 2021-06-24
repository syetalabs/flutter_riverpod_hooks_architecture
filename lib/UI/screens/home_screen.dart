import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starterpp/models/%20todo.dart';
import 'package:starterpp/providers/todo_list.dart';

import '../../providers/counter_provider.dart';

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = useProvider(counterProvider);
    final _todoList = useProvider(todoListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: _todoList.todoList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Checkbox(
                  value: _todoList.todoList.elementAt(index).done,
                  onChanged: (value) {
                    _todoList.toggleTodo(index);
                  },
                ),
                title: Text(_todoList.todoList.elementAt(index).description),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: TextField(),
                  content: Text("Hello World"),
                );
              });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
