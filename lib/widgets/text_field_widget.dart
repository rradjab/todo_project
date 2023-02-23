import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_project/models/todo_model.dart';
import 'package:todo_project/providers/provider.dart';
import 'package:uuid/uuid.dart';

class TextFieldWidget extends ConsumerWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fieldText = TextEditingController();
    return TextField(
      controller: fieldText,
      onSubmitted: (value) {
        ref
            .read(checkProvider.notifier)
            .addTodo(TodoModel(id: const Uuid().v4(), description: value));
        fieldText.clear();
      },
      decoration: const InputDecoration(
        label: Text('Add todo'),
      ),
    );
  }
}
