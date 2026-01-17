import 'package:flutter/material.dart';
import '../models/task.dart';
import '../services/database_helper.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final dueDateController = TextEditingController();
  String status = 'Pendiente';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agregar Tarea')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Descripción'),
            ),
            TextField(
              controller: dueDateController,
              decoration: const InputDecoration(
                labelText: 'Fecha de vencimiento (YYYY-MM-DD)',
              ),
            ),
            DropdownButtonFormField(
              value: status,
              items: [
                'Pendiente',
                'Completada',
              ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
              onChanged: (value) => setState(() {
                status = value!;
              }),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () async {
                final task = Task(
                  id: DateTime.now().millisecondsSinceEpoch,
                  title: titleController.text,
                  description: descriptionController.text,
                  dueDate: dueDateController.text,
                  status: status,
                );
                await DatabaseHelper().insertTask(task);
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
