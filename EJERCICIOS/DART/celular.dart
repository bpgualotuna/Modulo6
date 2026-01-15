import 'dispositivo_electronico.dart';

class Celular extends DispositivoElectronico{

  Celular(super.codigo, super.marca);
  void imprimir(){
    print("codigo: $codigo, marca: $marca");
  }
  
  @override
  void registrarInventario() {
    print("Registrado en inventario: codigo: $codigo, marca: $marca");
  }
}

void main(){
  final celular = Celular(1, "Samsung");
  celular.imprimir();
  celular.registrarInventario();
}