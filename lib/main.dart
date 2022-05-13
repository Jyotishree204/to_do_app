import 'package:flutter/material.dart';
import 'package:to_do_app/src/screens/todo_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(  
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(  
          primary: Colors.purple,
        ),
      ),
      home: const ToDoUI(),
    );
  }
}