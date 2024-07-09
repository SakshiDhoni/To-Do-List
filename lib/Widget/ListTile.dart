import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCheck,
    required this.removeTask,
  });

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCheck;
  final Function removeTask;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(taskTitle, style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
      ),),
      trailing: Checkbox(
       value: isChecked,
        activeColor: Colors.lightBlueAccent,
         onChanged: (newValue){
           checkboxCheck();
        }),
      onLongPress:() {
        removeTask();
      }
    );
    }
  }


//
// class TaskTile extends StatefulWidget {
//   @override
//   State<TaskTile> createState() => _TextTileState();
// }
//
// class _TextTileState extends State<TaskTile> {
//
//   bool isChecked = false;
//
//   void checkboxCheck(bool checkBoxState){
//
//     setState(() {
//       isChecked = checkBoxState;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title:Text('buy cloths', style: TextStyle(
//         decoration: isChecked ? TextDecoration.lineThrough : null,
//       ),),
//       trailing: CheckBox(checked: isChecked, doCheck:checkboxCheck ,),
//     );
//   }
// }
//
// class CheckBox extends StatelessWidget {
//
//   CheckBox({
//     required this.checked,
//     required this.doCheck,
//
// });
//
//   bool checked;
//   Function doCheck;
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(value: checked,
//         activeColor: Colors.lightBlueAccent,
//         onChanged: (newValue){
//          doCheck(newValue);
//           // setState(() {
//           //   isChecked = newValue!;
//           // });
//         });
//   }
// }



