import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starterpp/models/%20todo.dart';
import 'package:starterpp/providers/todo_list.dart';

class InputDialog extends HookWidget {
  const InputDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _todoList = useProvider(todoListProvider);
    final controller = useTextEditingController(text: 'initial text');
    return AlertDialog(
      title: TextField(
        controller: controller,
      ),
      content: MaterialButton(
        child: Text('Add'),
        onPressed: () {
          _todoList.addTodo(ToDo(description: controller.text));
        },
      ),
    );
  }
}
