import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:to_do_list/task.dart';

class task_data extends ChangeNotifier{

  List<Task> _tasks =[];

  UnmodifiableListView<Task> get task{
    return UnmodifiableListView(_tasks);
  }

  int get taskcount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }


}