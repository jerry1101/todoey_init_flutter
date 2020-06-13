import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('tttttt1'),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatefulWidget {
  const TaskCheckbox({
    Key key,
  }) : super(key: key);

  @override
  _TaskCheckboxState createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.orange[700],
      value: _isChecked,
      onChanged: (newValue) {
        setState(() {
          _isChecked = newValue;
        });
      },
    );
  }
}
