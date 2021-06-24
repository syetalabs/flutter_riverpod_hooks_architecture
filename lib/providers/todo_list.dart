import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starterpp/services/todo_list.dart';

final todoListProvider = ChangeNotifierProvider<ToDoList>((ref) {
  return ToDoList();
});
