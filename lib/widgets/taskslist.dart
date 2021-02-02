import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/model/task.dart';
import 'package:todolist/model/taskdata.dart';
import 'package:todolist/widgets/taskstile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          isChecked: Provider.of<TaskData>(context).taskslist[index].status,
          name: Provider.of<TaskData>(context).taskslist[index].task,
          callback: (bool newvalue) {
            Provider.of<TaskData>(context, listen: false).changestatus(
                Provider.of<TaskData>(context, listen: false).taskslist[index]);
          },
          gesturefunction: () {
            Provider.of<TaskData>(context, listen: false).removeTask(index);
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).taskslist.length,
    );
  }
}
