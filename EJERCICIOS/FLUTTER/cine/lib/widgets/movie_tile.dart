import 'package:cine/models/pelicula.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MovieTile extends StatelessWidget {
  final Pelicula pelicula;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const MovieTile({
    super.key,
    required this.pelicula,
    required this.onDelete,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
      child: ListTile(
        title: Text(pelicula.titulo),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Año: ${pelicula.anioEstreno}'),
            Text(
              'Comprada: ${DateFormat('dd/MM/yyyy').format(pelicula.fechaCompra)}',
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              pelicula.vista ? Icons.check_circle : Icons.check_circle_outline,
              color: pelicula.vista ? Colors.green : Colors.grey,
            ),
            IconButton(onPressed: onEdit, icon: const Icon(Icons.edit)),
            IconButton(onPressed: onDelete, icon: const Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
