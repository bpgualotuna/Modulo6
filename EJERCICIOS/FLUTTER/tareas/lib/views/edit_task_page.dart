import 'package:flutter/material.dart';
import '../models/task.dart';
import '../services/database_helper.dart';

class EditTaskPage extends StatefulWidget {
  final Task task;
  const EditTaskPage({super.key, required this.task});

  @override
  State<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late TextEditingController dueDateController;
  late String status;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.task.title);
    descriptionController = TextEditingController(
      text: widget.task.description,
    );
    dueDateController = TextEditingController(text: widget.task.dueDate);
    status = widget.task.status;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Editar Tarea')),
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
                  id: widget.task.id,
                  title: titleController.text,
                  description: descriptionController.text,
                  dueDate: dueDateController.text,
                  status: status,
                );
                await DatabaseHelper().updateTask(task);
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
