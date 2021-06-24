import 'package:flutter/material.dart';
import 'package:starterpp/models/%20todo.dart';

class ToDoList extends ChangeNotifier {
  List<ToDo> todoList = [
    ToDo(description: 'New TODO', id: 12, done: false),
    ToDo(description: '1 TODO', id: 112, done: false),
    ToDo(description: '2 TODO', id: 122, done: false)
  ];

  toggleTodo(int index) {
    todoList.elementAt(index).done = !todoList.elementAt(index).done;
    notifyListeners();
  }

  addTodo(ToDo todo) {
    todoList.add(todo);
    notifyListeners();
  }
}
