import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/task.dart';
import 'package:to_do_list/task_data.dart';

class PopupScreen extends StatelessWidget {
//   PopupScreen({
//     required this.addToList,
// });

 //final Function(String) addToList;
  String newTaskTitle = '';

  PopupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Padding(
        padding:  EdgeInsets.only(top: 20.0, left: 40, right: 40),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Task' ,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold , fontSize:30 , color: Colors.lightBlueAccent ),),

              TextField(autofocus: true, textAlign: TextAlign.center,
                onChanged: (newText){
                   newTaskTitle = newText;
                },),
              SizedBox(height: 10,),
              MaterialButton(onPressed: (){
               // addToList(newTaskTitle);
                Provider.of<task_data>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              }, child: Text('ADD', style: TextStyle(color: Colors.white),) , color: Colors.lightBlueAccent,),
            ],
          ),
        ),
      ),
    );
  }
}

