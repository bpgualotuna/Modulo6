import 'package:flutter/material.dart';
import 'package:navigation/pages/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
            onPressed: () {
              
              //Navigator.push(context, route);
              Navigator.pushNamed(context, Routes.products);
            },
            color: Colors.blue,
            child: const Text('Ir a Productos'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.customers);
            },
            color: Colors.blue,
            child: const Text('IR A CLIENTES'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.listview);
            },
            color: Colors.blue,
            child: const Text('IR A LISTVIEW'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.productList);
            },
            color: Colors.blue,
            child: const Text('IR A LISTA DE PRODUCTOS'),
          ),
        ],
      ),
    );
  }
}
