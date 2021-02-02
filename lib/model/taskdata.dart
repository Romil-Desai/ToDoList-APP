import 'package:flutter/cupertino.dart';
import 'package:todolist/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskslist = [];

  void addTask(Task dummy) {
    this.taskslist.add(dummy);
    notifyListeners();
  }

  void removeTask(int index) {
    this.taskslist.removeAt(index);
    notifyListeners();
  }

  int getcount() {
    return this.taskslist.length;
  }

  void changestatus(Task newtask) {
    newtask.changestatus();
    notifyListeners();
  }
}
