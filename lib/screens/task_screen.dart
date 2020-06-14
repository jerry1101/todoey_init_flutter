import 'package:flutter/material.dart';
import 'package:todoey_init/models/task.dart';
import 'package:todoey_init/widgets/add_task_sheet.dart';
import 'package:todoey_init/widgets/task_list.dart';
import 'package:todoey_init/widgets/task_tile.dart';

class TaskScreen extends StatefulWidget {
  TaskScreen({Key key}) : super(key: key);
  List<Task> tasks = [Task('buy milk'), Task('buy gas'), Task('buy book')];

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskSheet(screenCallback)))),
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.blueAccent,
      body: _body(widget.tasks),
    );
    return SafeArea(
      child: scaffold,
    );
  }

  void screenCallback(String taskName) {
    setState(() {
      widget.tasks.add(Task(taskName));
    });
  }
}

class _body extends StatelessWidget {
  final List<Task> tasks;
  _body(this.tasks);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _upperBody(),
        _lowerBody(tasks),
      ],
    );
  }
}

class _lowerBody extends StatelessWidget {
  final List<Task> tasks;
  _lowerBody(this.tasks);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          // height: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: TaskList(tasks),
        ),
      ),
    );
  }
}

class _upperBody extends StatelessWidget {
  const _upperBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 50, right: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.list,
              size: 60,
            ),
          ),
          Text(
            'Todoey',
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Text(
            '12 tasks',
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
