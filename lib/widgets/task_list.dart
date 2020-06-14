import 'package:flutter/material.dart';
import 'package:todoey_init/models/task.dart';
import 'package:todoey_init/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [Task('buy milk'), Task('buy gas'), Task('buy book')];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => TaskTile(name: tasks[index].name));

    // ListView(
    //     children: tasks.map((t) => TaskTile(name: t.name)).toList());
  }
}
