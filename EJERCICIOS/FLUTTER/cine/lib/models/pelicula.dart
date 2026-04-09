class Pelicula {
  final int id;
  final String titulo;
  final int anioEstreno;
  final bool vista;
  final DateTime fechaCompra;
  final String resumen;

  Pelicula({
    required this.id,
    required this.titulo,
    required this.anioEstreno,
    required this.vista,
    required this.fechaCompra,
    required this.resumen,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'anioEstreno': anioEstreno,
      'vista': vista ? 1 : 0,
      'fechaCompra': fechaCompra.toIso8601String(),
      'resumen': resumen,
    };
  }

  factory Pelicula.fromMap(Map<String, dynamic> map) {
    return Pelicula(
      id: map['id'],
      titulo: map['titulo'],
      anioEstreno: map['anioEstreno'],
      vista: map['vista'] == 1,
      fechaCompra: DateTime.parse(map['fechaCompra']),
      resumen: map['resumen'],
    );
  }
}
