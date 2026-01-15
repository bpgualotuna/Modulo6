class Estudiante {
  final String nombre;
  late String cuaderno;
  static String pizarra = "limpia";
  static const escuela = "14 de julio";
  static int contadorEstudiantes = 0;

  void escribirEnPizarra(String mensaje){
    pizarra = mensaje;
  }

  static obtenerContador(){
    return contadorEstudiantes;
  }

  //Constructor
  Estudiante(this.nombre){
    contadorEstudiantes++;
  }
}
