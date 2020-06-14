import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  // @override
  // _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
  // void checkboxCallback(bool checkboxStatus) {
  //   setState(() {
  //     isChecked = checkboxStatus;
  //   });
  // }

  final bool isChecked;
  final String name;
  TaskTile({@required this.name, this.isChecked=false});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          name,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.orange[700],
          value: isChecked,
        )
        // TaskCheckbox(isChecked, checkboxCallback),
        );
  }
}

class TaskCheckbox extends StatelessWidget {
  final isChecked;
  final Function callbackfunction;
  TaskCheckbox(this.isChecked, this.callbackfunction);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.orange[700],
      value: isChecked,
      // onChanged: (newValue) {
      //   callbackfunction(newValue);
      // },
    );
  }
}
