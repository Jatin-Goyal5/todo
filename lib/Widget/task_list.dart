import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Widget/task_tile.dart';
import 'package:todo/models/task_list.dart';
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.getList()[index];
            return TaskTile(
              taskTitle: task.task,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              onLongPresscallback: (){
                taskData.remove(task);
              },
              
            );
          },
          itemCount: taskData.getLength(),
        );
      },
    );
  }
}