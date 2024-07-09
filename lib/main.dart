import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/Screen/first_screen.dart';
import 'package:to_do_list/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return task_data();  // Corrected this line
      },
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      ),
    );
  }
}
