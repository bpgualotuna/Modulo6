abstract class DispositivoElectronico {
  int codigo;
  String marca;

  DispositivoElectronico(this.codigo, this.marca);

  void registrarInventario();

  void imprimir() {
    print("codigo: $codigo, marca: $marca");
  }
}
