import 'package:tareas/views/add_task_page.dart';
import 'package:flutter/material.dart';
import 'package:tareas/views/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión de Tareas',
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {'/add': (context) => const AddTaskPage()},
    );
  }
}
