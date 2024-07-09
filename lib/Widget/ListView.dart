import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/Widget/ListTile.dart';
import 'package:to_do_list/task.dart';
import 'package:to_do_list/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return
    Consumer<task_data>(
        builder: (context, taskData, child)
   {
     return ListView.builder(
       itemBuilder: (context, index) {
         return TaskTile(
           isChecked: taskData.task[index].isDone,
           taskTitle: taskData.task[index].name,
           checkboxCheck: () {
             taskData.updateTask(taskData.task[index]);
            },
           removeTask: (){
             taskData.removeTask(taskData.task[index]);
         },
         );
       },
       itemCount: taskData.taskcount,
     );

    // return ListView.builder(itemBuilder:(context, index){
    //    return TaskTile(
    //      // isChecked: widget.task[index].isDone,
    //      isChecked: Provider.of<task_data>(context).task[index].isDone,
    //        //taskTitle:widget.task[index].name,
    //      taskTitle: Provider.of<task_data>(context).task[index].name,
    //      checkboxCheck:(){
    //         // setState(() {
    //         //   widget.tasks[index].toggleDone();
    //         // });
    //        Provider.of<task_data>(context).updateTask(
    //            Provider.of<task_data>(context).task[index]);
    //      },
    //
    //    );
    // },
    // itemCount:Provider.of<task_data>(context).taskcount,
    // );
   },
    );
  }
}

