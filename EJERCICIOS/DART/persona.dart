class Persona{
  String? nombre;
  int edad=0;
  double? estatura;
}

void main (){
  Persona p=Persona();
  p.nombre="Juan";
  p.edad=20;
  p.estatura=1.70;
  print("Nombre: ${p.nombre}");
  print("Edad: ${p.edad}");
  print("Estatura: ${p.estatura}");

}