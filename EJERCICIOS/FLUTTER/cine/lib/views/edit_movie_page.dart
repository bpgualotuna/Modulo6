import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/pelicula.dart';
import '../services/database_helper.dart';

class EditMoviePage extends StatefulWidget {
  final Pelicula pelicula;
  const EditMoviePage({super.key, required this.pelicula});

  @override
  State<EditMoviePage> createState() => _EditMoviePageState();
}

class _EditMoviePageState extends State<EditMoviePage> {
  late TextEditingController tituloController;
  late TextEditingController anioEstrenoController;
  late TextEditingController resumenController;
  late DateTime fechaCompra;
  late bool vista;

  @override
  void initState() {
    super.initState();
    tituloController = TextEditingController(text: widget.pelicula.titulo);
    anioEstrenoController = TextEditingController(
      text: widget.pelicula.anioEstreno.toString(),
    );
    resumenController = TextEditingController(text: widget.pelicula.resumen);
    fechaCompra = widget.pelicula.fechaCompra;
    vista = widget.pelicula.vista;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: fechaCompra,
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
      appBar: AppBar(title: const Text('Editar Película')),
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
              subtitle: Text(DateFormat('dd/MM/yyyy').format(fechaCompra)),
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
                final pelicula = Pelicula(
                  id: widget.pelicula.id,
                  titulo: tituloController.text,
                  anioEstreno: int.parse(anioEstrenoController.text),
                  vista: vista,
                  fechaCompra: fechaCompra,
                  resumen: resumenController.text,
                );
                await DatabaseHelper().updatePelicula(pelicula);
                Navigator.pop(context, true);
              },
              child: const Text('Actualizar'),
            ),
          ],
        ),
      ),
    );
  }
}
