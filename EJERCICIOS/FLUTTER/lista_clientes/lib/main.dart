import 'package:flutter/material.dart';
import 'pages/routes.dart';
import 'pages/home_page.dart';
import 'pages/listar_clientes_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.home: (context) => const HomePage(),
        Routes.listarClientes: (context) => const ListarClientesPage(),
      },
    );
  }
}
