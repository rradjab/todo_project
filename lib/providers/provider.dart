import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_project/models/todo_model.dart';
import 'package:todo_project/services/todo_notifier.dart';

final checkProvider = StateNotifierProvider<TodoNotifier, List<TodoModel>>(
  (ref) => TodoNotifier(),
);

final filterProvider = StateProvider((ref) => 'All');

final visibleTodos = StateProvider((ref) => 0);
