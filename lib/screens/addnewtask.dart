import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/model/task.dart';
import 'package:todolist/model/taskdata.dart';

class BottomPoppingSheet extends StatelessWidget {
  String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'ADD TASK',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 4.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 4.0),
                ),
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 4.0),
                ),
              ),
              onChanged: (value) {
                task = value;
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              height: 60.0,
              color: Colors.lightBlueAccent,
              onPressed: () {
                if (task != null) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(Task(task));
                  Navigator.pop(context);
                }
              },
              child: Text(
                'ADD',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
