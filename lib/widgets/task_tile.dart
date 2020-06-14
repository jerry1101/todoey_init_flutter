import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key key,
  }) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  void checkboxCallback(bool checkboxStatus) {
    setState(() {
      isChecked = checkboxStatus;
    });
  }

  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'tttttt1',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(isChecked, checkboxCallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final isChecked;
  final callbackfunction;
  TaskCheckbox(this.isChecked, this.callbackfunction);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.orange[700],
      value: isChecked,
      onChanged: (newValue) {
        callbackfunction(newValue);
      },
    );
  }
}
// class TaskCheckbox extends StatefulWidget {
//   const TaskCheckbox({
//     Key key,
//   }) : super(key: key);

//   @override
//   _TaskCheckboxState createState() => _TaskCheckboxState();
// }

// class _TaskCheckboxState extends State<TaskCheckbox> {
//   bool _isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.orange[700],
//       value: _isChecked,
//       onChanged: (newValue) {
//         setState(() {
//           _isChecked = newValue;
//         });
//       },
//     );
//   }
// }
