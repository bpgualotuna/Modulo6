import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, color: Colors.blue),
                  Text('Inicio', style: TextStyle(color: Colors.blue)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings, color: Colors.green),
                  Text('Configuración', style: TextStyle(color: Colors.green)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.person, color: Colors.orange),
                  Text('Perfil', style: TextStyle(color: Colors.orange)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.exit_to_app, color: Colors.red),
                  Text('Salir', style: TextStyle(color: Colors.red)),
                ],
              ),
            ],
          ),
        ),
        body: const Center(child: Text('Hello World!')),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          shadowColor: Colors.black,
          elevation: 30,
          centerTitle: true,
          title: Center(child: Text('APP TEST') ),
          titleTextStyle: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.text_fields),
              label: "Text",
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("test");
          },
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
