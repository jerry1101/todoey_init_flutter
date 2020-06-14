import 'package:flutter/material.dart';
import 'package:todoey_init/models/task.dart';
import 'package:todoey_init/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  // List<Task> tasks = [Task('buy milk'), Task('buy gas'), Task('buy book')];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) => TaskTile(
              name: widget.tasks[index].name,
              isChecked: widget.tasks[index].isDone,
              listViewCallback: (isChecked) {
                setState(() {
                  widget.tasks[index].ToggleCheckbox();
                });
              },
            ));
  }
}
