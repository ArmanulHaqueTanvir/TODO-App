import 'package:flutter/material.dart';
import 'package:todo_app/screens/task.dart';
import 'Task_Tile.dart';
import 'Task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: ((context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              CheckBoxCallBack: (checkBoxState) {
                taskData.updateTask(task);
              },
              longpressCallBack: () {
                taskData.deleteTask(task);
              },
            );
          }),
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
