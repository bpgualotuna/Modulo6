import 'package:biblioteca/views/add_books_page.dart';
import 'package:flutter/material.dart';
import 'package:biblioteca/views/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca DEMO',
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        '/add': (context)=> const AddBooksPage(),
      },
    );
  }
}
