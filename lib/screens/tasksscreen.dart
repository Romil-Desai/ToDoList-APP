import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/model/task.dart';
import 'package:todolist/model/taskdata.dart';
import 'package:todolist/screens/addnewtask.dart';
import 'package:todolist/widgets/taskslist.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: BottomPoppingSheet(
                          // callbacktomainpage: (newtask) {
                          //   setState(() {
                          //     widget.tasklist.add(Task(newtask));
                          //   });
                          //   Navigator.pop(context);
                          // },
                          ),
                    )));
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.only(left: 30.0, top: 40.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 50.0,
                    ),
                    backgroundColor: Colors.white,
                    radius: 40.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).getcount()} tasks',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: TasksList(),
              ),
            ),
          ]),
        ));
  }
}
