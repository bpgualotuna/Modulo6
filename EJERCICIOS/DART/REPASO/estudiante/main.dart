import 'estudiante.dart';

void main() {
  final estudiante1 = Estudiante("Brayan");
  final estudiante2 = Estudiante("Maria");
  final estudiante3 = Estudiante("Juan");
  print(estudiante1.nombre);
  print(estudiante2.nombre);
  print(estudiante3.nombre);
  print(Estudiante.obtenerContador());

  print(Estudiante.pizarra);
  estudiante1.escribirEnPizarra("Hola");
  print(Estudiante.pizarra);
}