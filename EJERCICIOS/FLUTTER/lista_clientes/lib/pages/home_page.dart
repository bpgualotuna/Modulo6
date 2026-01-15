import 'package:flutter/material.dart';
import 'routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.listarClientes);
          },
          color: Colors.blue,
          child: const Text('Listar Clientes'),
        ),
      ),
    );
  }
}
