class Tienda {
  final String nombre;
  String anuncio;
  int _productosVendidos = 0;

  Tienda(this.nombre, this.anuncio);

  void cambiarAnuncio(String nuevoAnuncio) {
    anuncio = nuevoAnuncio;
  }

  void aumentarVentas() {
    _productosVendidos++;
  }

  int obtenerVentas() {
    return _productosVendidos;
  }
}

class Producto {
  String codigo;
  String descripcion;
  double precio;
  String observacion;

  Producto(this.codigo) : descripcion = "", precio = 0.0, observacion = "";

  void registrarVenta(
    String desc,
    double nuevoPrecio,
    String obs,
    Tienda tienda,
  ) {
    descripcion = desc;
    precio = nuevoPrecio;
    observacion = obs;
    tienda.aumentarVentas();
  }

  String resumen() {
    return "Código: $codigo, Descripción: $descripcion, Precio: \$$precio, Observación: $observacion";
  }
}
