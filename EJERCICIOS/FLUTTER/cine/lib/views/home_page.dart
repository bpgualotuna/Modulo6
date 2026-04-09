import 'package:cine/models/pelicula.dart';
import 'package:cine/services/database_helper.dart';
import 'package:cine/views/add_movie_page.dart';
import 'package:cine/views/edit_movie_page.dart';
import 'package:cine/widgets/movie_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Pelicula>> _peliculaList;

  @override
  void initState() {
    super.initState();
    _refreshList();
  }

  void _refreshList() async {
    setState(() {
      _peliculaList = DatabaseHelper().getPeliculas();
    });
  }

  void _deletePelicula(int id) async {
    await DatabaseHelper().deletePelicula(id);
    _refreshList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi Cine Personal')),
      body: FutureBuilder<List<Pelicula>>(
        future: _peliculaList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No hay películas'));
          } else {
            return ListView(
              children: snapshot.data!
                  .map(
                    (pelicula) => MovieTile(
                      pelicula: pelicula,
                      onDelete: () => _deletePelicula(pelicula.id),
                      onEdit: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => EditMoviePage(pelicula: pelicula),
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
            MaterialPageRoute(builder: (_) => AddMoviePage()),
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
