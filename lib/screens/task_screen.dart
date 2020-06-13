import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  TaskScreen({Key key}) : super(key: key);

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Colors.blueAccent,
      body: _body(),
    );
    return SafeArea(
      child: scaffold,
    );
  }
}

class _body extends StatelessWidget {
  const _body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _upperBody(),
        _lowerBody(),
      ],
    );
  }
}

class _lowerBody extends StatelessWidget {
  const _lowerBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue,
        child: Container(
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
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
