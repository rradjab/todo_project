import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_project/models/todo_model.dart';
import 'package:todo_project/providers/provider.dart';
import 'package:todo_project/widgets/list_item_widget.dart';

class TodoListWidget extends ConsumerStatefulWidget {
  const TodoListWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodoListWidget();
}

class _TodoListWidget extends ConsumerState<TodoListWidget> {
  @override
  Widget build(BuildContext context) {
    List<TodoModel> todos = ref.watch(checkProvider);
    final filter = ref.watch(filterProvider);
    List<ListItemWidget> itemsList = [
      for (int i = 0; i < todos.length; i++)
        if (filter == 'Completed' && todos[i].isCompleted)
          ListItemWidget(todos: todos[i])
        else if (filter == 'Unseen' && !todos[i].isCompleted)
          ListItemWidget(todos: todos[i])
        else if (filter == 'All')
          ListItemWidget(todos: todos[i])
    ];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(visibleTodos.notifier).update((state) => itemsList.length);
    });

    return Column(
      children: itemsList,
    );
  }
}
