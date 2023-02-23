import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_project/providers/provider.dart';

class FilterWidget extends ConsumerWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoFilter = ref.read(filterProvider.notifier);
    final visibleTodosCount = ref.watch(visibleTodos);
    List toolTips = ['All', 'Completed', 'Unseen'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$visibleTodosCount ${ref.watch(filterProvider)} todos'),
        for (String s in toolTips)
          Tooltip(
            message: '$s Todos',
            child: TextButton(
              child: Text(s),
              onPressed: () {
                todoFilter.update((state) => s);
              },
            ),
          ),
      ],
    );
  }
}
