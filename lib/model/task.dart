class Task {
  final String task;
  bool status = false;

  Task(this.task);
  void changestatus() {
    this.status = !this.status;
  }
}
