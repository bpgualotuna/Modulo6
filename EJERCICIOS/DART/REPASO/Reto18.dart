void main() {
  print('=== Ejercicio 1 - Planificador de Comidas Semanal ===\n');
  ejercicio1();

  print('\n=== Ejercicio 2 - Ranking de Jugadores ===\n');
  ejercicio2();

  print('\n=== Ejercicio 3 - Catálogo de Películas por Plataforma ===\n');
  ejercicio3();
}

// Ejercicio 1 - Planificador de Comidas Semanal
void ejercicio1() {
  List<String> comidasFavoritas = [
    'Pizza',
    'Hamburguesa',
    'Sushi',
    'Tacos',
    'Pasta',
  ];
  print('1. Comidas favoritas: $comidasFavoritas');

  comidasFavoritas.add('Ceviche');
  print('2. Después de agregar: $comidasFavoritas');

  comidasFavoritas.remove('Tacos');
  print('3. Después de eliminar: $comidasFavoritas');

  print('4. Comida en posición 2: ${comidasFavoritas[2]}');

  List<List<String>> menuSemanal = [
    ['Huevos', 'Cereal', 'Sopa'],
    ['Tostadas', 'Ensalada', 'Pollo'],
    ['Panqueques', 'Sandwich', 'Pescado'],
    ['Yogurt', 'Pasta', 'Carne'],
    ['Frutas', 'Arroz', 'Pizza'],
  ];
  print('5. Menú semanal: $menuSemanal');

  print('6. Almuerzo del martes: ${menuSemanal[1][1]}');

  menuSemanal[4][2] = 'Lasaña';
  print('7. Cena del viernes cambiada: ${menuSemanal[4][2]}');

  print('8. Menú completo organizado por día:');
  List<String> dias = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes'];
  for (int i = 0; i < menuSemanal.length; i++) {
    print(
      '   ${dias[i]}: Desayuno=${menuSemanal[i][0]}, Almuerzo=${menuSemanal[i][1]}, Cena=${menuSemanal[i][2]}',
    );
  }
}

// Ejercicio 2 - Ranking de Jugadores
void ejercicio2() {
  Map<String, int> puntajes = {
    'Carlos': 150,
    'Ana': 200,
    'Luis': 180,
    'María': 220,
  };
  print('1. Puntajes iniciales: $puntajes');

  print('2. Ya se agregaron 4 jugadores con puntajes distintos');

  print('3. Nombres de jugadores: ${puntajes.keys}');

  print('4. Puntaje de Ana: ${puntajes['Ana']}');

  puntajes['Carlos'] = 175;
  print('5. Puntaje de Carlos modificado: ${puntajes['Carlos']}');

  puntajes['Pedro'] = 190;
  print('6. Nuevo jugador agregado: $puntajes');

  puntajes.remove('Luis');
  print('7. Después de eliminar a Luis: $puntajes');

  print('8. Mapa completo actualizado:');
  puntajes.forEach((nombre, puntaje) {
    print('   $nombre: $puntaje puntos');
  });
}

// Ejercicio 3 - Catálogo de Películas por Plataforma
void ejercicio3() {
  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [Pelicula('Stranger Things', 2016), Pelicula('The Crown', 2016)],
    'HBO': [Pelicula('Game of Thrones', 2011), Pelicula('Succession', 2018)],
    'Disney+': [Pelicula('The Mandalorian', 2019)],
  };
  print('2. Catálogo inicial creado');

  catalogoStreaming['Netflix']!.add(Pelicula('Wednesday', 2022));
  catalogoStreaming['HBO']!.add(Pelicula('The Last of Us', 2023));
  catalogoStreaming['Disney+']!.add(Pelicula('Loki', 2021));
  print('3. Películas agregadas a cada plataforma');
  print('4. Títulos en Netflix:');
  for (var pelicula in catalogoStreaming['Netflix']!) {
    print('   - ${pelicula.titulo}');
  }

  catalogoStreaming['Disney+']!.add(Pelicula('Ahsoka', 2023));
  print('5. Nueva película agregada a Disney+');

  catalogoStreaming['HBO']![0].anioEstreno = 2012;
  print('6. Año de estreno cambiado en HBO');

  catalogoStreaming['Netflix']!.removeAt(0);
  print('7. Película eliminada de Netflix');

  print('8. Catálogo completo:');
  catalogoStreaming.forEach((plataforma, peliculas) {
    print('Plataforma: $plataforma');
    for (var pelicula in peliculas) {
      print('  - ${pelicula.titulo} (${pelicula.anioEstreno})');
    }
  });
}

// Clase Pelicula para el Ejercicio 3
class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);
}
