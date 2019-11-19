import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_provider/providers/todos_model.dart';
import 'package:todos_provider/widgets/task_list.dart';

class CompletedTaskTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodoModel>(
        builder: (context, todos, child) => TaskList(
          tasks: todos.completedTasks,
        ),
      ),
    );
  }
}
