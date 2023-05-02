import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  String taskTitle;
  dynamic CheckBoxCallBack;
  dynamic longpressCallBack;
  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.CheckBoxCallBack,
    required this.longpressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: CheckBoxCallBack,
      ),
    );
  }
}
