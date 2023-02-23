import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_project/models/todo_model.dart';
import 'package:todo_project/providers/provider.dart';
import 'package:todo_project/widgets/list_tile_widget.dart';

class ListItemWidget extends ConsumerWidget {
  final TodoModel todos;
  const ListItemWidget({super.key, required this.todos});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: ValueKey(todos.id),
      child: TodoList(
        model: todos,
      ),
      onDismissed: (direction) {
        ref.read(checkProvider.notifier).delTodo(todos.id);
      },
    );
  }
}
