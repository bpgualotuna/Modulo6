import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/pelicula.dart';
import '../services/database_helper.dart';

class AddMoviePage extends StatefulWidget {
  const AddMoviePage({super.key});

  @override
  State<AddMoviePage> createState() => _AddMoviePageState();
}

class _AddMoviePageState extends State<AddMoviePage> {
  final tituloController = TextEditingController();
  final anioEstrenoController = TextEditingController();
  final resumenController = TextEditingController();
  DateTime? fechaCompra;
  bool vista = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: fechaCompra ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != fechaCompra) {
      setState(() {
        fechaCompra = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agregar Película')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: tituloController,
              decoration: const InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: anioEstrenoController,
              decoration: const InputDecoration(labelText: 'Año de Estreno'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('Fecha de Compra'),
              subtitle: Text(
                fechaCompra != null
                    ? DateFormat('dd/MM/yyyy').format(fechaCompra!)
                    : 'Seleccionar fecha',
              ),
              trailing: const Icon(Icons.calendar_today),
              onTap: () => _selectDate(context),
            ),
            CheckboxListTile(
              title: const Text('Vista'),
              value: vista,
              onChanged: (value) => setState(() {
                vista = value!;
              }),
            ),
            TextField(
              controller: resumenController,
              decoration: const InputDecoration(labelText: 'Resumen'),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () async {
                if (fechaCompra == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Por favor selecciona una fecha de compra'),
                    ),
                  );
                  return;
                }

                final pelicula = Pelicula(
                  id: DateTime.now().millisecondsSinceEpoch,
                  titulo: tituloController.text,
                  anioEstreno: int.parse(anioEstrenoController.text),
                  vista: vista,
                  fechaCompra: fechaCompra!,
                  resumen: resumenController.text,
                );
                await DatabaseHelper().insertPelicula(pelicula);
                Navigator.pop(context, true);
              },
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
