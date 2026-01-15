class MiProducto {
  String codigo;
  double precio;
  String? descripcion;

  MiProducto(this.codigo, this.precio, this.descripcion);

  MiProducto.generico(String codigo) : this.codigo = codigo, precio = 0.0;
}
