
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_project/models/todo_model.dart';
import 'package:todo_project/providers/provider.dart';

class TodoList extends ConsumerWidget {
  final TodoModel model;
  const TodoList({super.key, required this.model});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(model.description),
      leading: Checkbox(
        value: model.isCompleted,
        onChanged: (value) => ref.read(checkProvider.notifier).toggle(model.id),
      ),
    );
  }
}
