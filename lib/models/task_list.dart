import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:todo/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks=[

  ];
  void add(String task){
    _tasks.add(new Task(task:task));
    notifyListeners();
  }
void updateTask(Task task) {
    task.toggleisDone();
    notifyListeners();
  }
  void remove(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> getList(){
    return UnmodifiableListView(_tasks);
  }

  int getLength(){
    return _tasks.length;
  }
  

}