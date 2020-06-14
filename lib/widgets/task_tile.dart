import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final Function listViewCallback;
  TaskTile({this.name, this.isChecked, this.listViewCallback});
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
            onChanged: (newValue) {
              listViewCallback(newValue);
            })
        // TaskCheckbox(isChecked, checkboxCallback),
        );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final isChecked;
//   final Function callbackfunction;
//   TaskCheckbox(this.isChecked, this.callbackfunction);
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.orange[700],
//       value: isChecked,
//       // onChanged: (newValue) {
//       //   callbackfunction(newValue);
//       // },
//     );
//   }
// }
