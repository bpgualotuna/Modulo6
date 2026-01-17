import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/database_helper.dart';

class AddBooksPage extends StatefulWidget{
  const AddBooksPage({super.key});

  @override
  State<AddBooksPage> createState() => _AddBooksPageState();
}

class _AddBooksPageState extends State<AddBooksPage> {
  final titleController = TextEditingController();
  final authorController = TextEditingController();
  final noteController = TextEditingController();
  String status = 'Pendiente';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Libro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: authorController,
              decoration: const InputDecoration(labelText: 'Autor'),
            ),
            DropdownButtonFormField(
              value: status,
              items: [
                'Leído',
                'Pendiente',  
              ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
              onChanged: (value) => setState(() {
                status = value!;
              }),
            ),
            TextField(
              controller: noteController,
              decoration: const InputDecoration(labelText: 'Nota'),
            ),
            const SizedBox(height: 16),
            
            ElevatedButton(onPressed: () async{
              final book = Book(
                id: DateTime.now().millisecondsSinceEpoch,
                title: titleController.text,
                author: authorController.text,
                status: status,
                note: noteController.text,
              );
              await DatabaseHelper().insertBook(book);
              Navigator.pop(context,true);
            }, 
            child: const Text('Guardar')),
          ],
      ))  ,
    );
  }
}
