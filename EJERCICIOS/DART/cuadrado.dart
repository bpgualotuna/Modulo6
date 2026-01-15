import 'figura.dart';

class Cuadrado extends Figura {
  final double lado;
  const Cuadrado(this.lado, super.color);

  @override
  double calcularArea() {
    return lado * lado;
  }

  @override
  double calcularPerimetro() {
    return lado * 4;
  }
}

void main() {
  final cuadrado = const Cuadrado(2.0, "rojo");
  final area1 = cuadrado.calcularArea();
  final perimetro = cuadrado.calcularPerimetro();
  print("Area: $area1, Perimetro: $perimetro");
}
