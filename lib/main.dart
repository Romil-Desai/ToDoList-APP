import 'package:flutter/material.dart';
import 'package:todolist/screens/tasksscreen.dart';
import 'package:provider/provider.dart';
import 'model/taskdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
