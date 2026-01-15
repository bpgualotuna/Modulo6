import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/cliente.dart';

class ListarClientesPage extends StatelessWidget {
  const ListarClientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Cliente> clientes = [
      Cliente(nombre: 'Cliente 1', edad: 25),
      Cliente(nombre: 'Cliente 2', edad: 30),
      Cliente(nombre: 'Cliente 3', edad: 22),
      Cliente(nombre: 'Cliente 4', edad: 28),
      Cliente(nombre: 'Cliente 5', edad: 35),
      Cliente(nombre: 'Cliente 6', edad: 27),
      Cliente(nombre: 'Cliente 7', edad: 31),
      Cliente(nombre: 'Cliente 8', edad: 24),
      Cliente(nombre: 'Cliente 9', edad: 29),
      Cliente(nombre: 'Cliente 10', edad: 26),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Clientes')),
      body: ListView.builder(
        itemCount: clientes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(clientes[index].nombre),
            subtitle: Text('Edad: ${clientes[index].edad}'),
          );
        },
      ),
    );
  }
}
