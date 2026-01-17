import 'package:tareas/models/task.dart';
import 'package:tareas/services/database_helper.dart';
import 'package:tareas/views/add_task_page.dart';
import 'package:tareas/views/edit_task_page.dart';
import 'package:tareas/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Task>> _taskList;

  @override
  void initState() {
    super.initState();
    _refreshList();
  }

  void _refreshList() async {
    setState(() {
      _taskList = DatabaseHelper().getTasks();
    });
  }

  void _deleteTask(int id) async {
    await DatabaseHelper().deleteTask(id);
    _refreshList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mis Tareas')),
      body: FutureBuilder<List<Task>>(
        future: _taskList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No hay tareas'));
          } else {
            return ListView(
              children: snapshot.data!
                  .map(
                    (task) => TaskTile(
                      task: task,
                      onDelete: () => _deleteTask(task.id),
                      onEdit: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => EditTaskPage(task: task),
                          ),
                        );
                        if (result) {
                          _refreshList();
                        }
                      },
                    ),
                  )
                  .toList(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AddTaskPage()),
          );
          if (result) {
            _refreshList();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
