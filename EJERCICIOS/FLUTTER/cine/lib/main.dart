import 'package:cine/views/add_movie_page.dart';
import 'package:flutter/material.dart';
import 'package:cine/views/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Cine Personal',
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {'/add': (context) => const AddMoviePage()},
    );
  }
}
