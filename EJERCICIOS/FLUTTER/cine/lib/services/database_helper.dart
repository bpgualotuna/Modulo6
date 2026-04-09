import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/pelicula.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'cinema.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE peliculas (id INTEGER PRIMARY KEY AUTOINCREMENT, titulo TEXT, anioEstreno INTEGER, vista INTEGER, fechaCompra TEXT, resumen TEXT)',
        );
      },
    );
  }

  Future<void> insertPelicula(Pelicula pelicula) async {
    final db = await database;
    await db.insert(
      'peliculas',
      pelicula.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Pelicula>> getPeliculas() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('peliculas');
    return List.generate(maps.length, (i) {
      return Pelicula.fromMap(maps[i]);
    });
  }

  Future<void> updatePelicula(Pelicula pelicula) async {
    final db = await database;
    await db.update(
      'peliculas',
      pelicula.toMap(),
      where: 'id = ?',
      whereArgs: [pelicula.id],
    );
  }

  Future<void> deletePelicula(int id) async {
    final db = await database;
    await db.delete('peliculas', where: 'id = ?', whereArgs: [id]);
  }
}
