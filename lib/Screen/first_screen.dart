import 'package:flutter/material.dart';
import 'package:to_do_list/Widget/ListView.dart';
import 'package:to_do_list/Screen/popup_screen.dart';
import 'package:to_do_list/task.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/task_data.dart';



class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // List<Task> task = [
  // ];

  Widget buildBottomsheet(BuildContext context){
    return SingleChildScrollView(child: Padding(
      padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: PopupScreen(),
        //addToList: (newTaskTitle){
       // setState(() {
       //   task.add(Task(name:newTaskTitle,));
       // });
      //},),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
         showModalBottomSheet(context: context,isScrollControlled: true, builder:buildBottomsheet);
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,

        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //     decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                //     child: Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Icon(Icons.menu_rounded, size: 30, color: Colors.lightBlueAccent,),
                //     )),
                Padding(
                  padding: const EdgeInsets.only(top:50, left: 30, bottom: 20),
                  child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                   CircleAvatar(
                     backgroundColor: Colors.white,
                     child: Icon(Icons.menu_rounded, size: 25, color: Colors.lightBlueAccent,),),

                   SizedBox(height: 20,),

                                Text('To DO List', style:  TextStyle(fontSize: 30 , color: Colors.white, fontWeight: FontWeight.bold), ),
                   SizedBox(height: 20,),

                  Text('${Provider.of<task_data>(context).taskcount} Tasks', style:  TextStyle(fontSize: 20 , color: Colors.white,)),
                  SizedBox(height: 30,),

                                 ],
                          ),
                  ),
                ),

               Expanded(
                 child: Container(
                   decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))),

                   child: TasksList(),
                 ),
               )
              ],

            ),
          ),
      );
  }
}


