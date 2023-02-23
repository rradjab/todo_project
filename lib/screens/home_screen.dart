import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_project/widgets/filter_widget.dart';
import 'package:todo_project/widgets/text_field_widget.dart';
import 'package:todo_project/widgets/title_widget.dart';
import 'package:todo_project/widgets/todo_list_widget.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 60.0,
        ),
        children: const [
          TitleWidget(),
          TextFieldWidget(),
          FilterWidget(),
          TodoListWidget(),
        ],
      ),
    );
  }
}
