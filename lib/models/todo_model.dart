import 'package:flutter/material.dart';

@immutable
class TodoModel {
  final String id;
  final String description;
  final bool isCompleted;

  const TodoModel(
      {required this.id, required this.description, this.isCompleted = false});

  TodoModel copyWith({String? id, String? description, bool? isCompleted}) {
    return TodoModel(
      id: id ?? this.id,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
