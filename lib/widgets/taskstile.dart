import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  String name;
  Function callback;
  Function gesturefunction;

  TasksTile({this.isChecked, this.name, this.callback, this.gesturefunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: gesturefunction,
      child: ListTile(
          title: Text(
            this.name,
            style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: this.callback,
          )),
    );
  }
}
// (bool newvalue) {
// setState(() {
// isChecked = newvalue;
// });
// }
