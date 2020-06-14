import 'package:flutter/material.dart';

class AddTaskSheet extends StatelessWidget {
  String _taskName;
  Function _screenCallback;
  
  AddTaskSheet(this._screenCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 117, 117, 117),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                'Add Task',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.lightBlueAccent),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newValue) {
                  _taskName = newValue;
                },
              ),
              FlatButton(
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    print(_taskName);
                    _screenCallback(_taskName);
                  },
                  child: Text('Save'))
            ],
          ),
        ),
      ),
    );
  }
}
