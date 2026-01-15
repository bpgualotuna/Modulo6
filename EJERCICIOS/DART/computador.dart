import 'celular.dart';
import 'dispositivo_electronico.dart';

class Computador extends DispositivoElectronico {
  int capacidadDisco;

  Computador(super.codigo, super.marca, this.capacidadDisco);

  @override
  void imprimir() {
    print("codigo: $codigo, marca: $marca, capacidadDisco: $capacidadDisco");
  }

  @override
  void registrarInventario() {
    print("Registrado en inventario: codigo: $codigo, marca: $marca, capacidadDisco: $capacidadDisco");
  }
}

void main() {
  final computador = Computador(1, "HP", 1000);
  computador.registrarInventario();
  final celular = Celular(2, "Samsung");
  celular.registrarInventario();
}
