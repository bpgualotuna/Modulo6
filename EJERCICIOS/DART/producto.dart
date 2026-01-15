class Producto{
  String codigo="";
  String nombre="";
  String? descripcion;
  bool activo=true;
  double precio=0.0;
  int? stock;
}

void main(){
  Producto p=Producto();
  p.codigo="1";
  p.nombre="Producto 1";
  p.descripcion="Descripcion del producto 1";
  p.activo=true;
  p.precio=10.0;
  p.stock=10;
  print("Codigo: ${p.codigo}");
  print("Nombre: ${p.nombre}");
  print("Descripcion: ${p.descripcion}");
  print("Activo: ${p.activo}");
  print("Precio: ${p.precio}");
  print("Stock: ${p.stock}");

  Producto p2 = Producto();
  p2.codigo="2";
  p2.nombre="Producto 2";
  p2.descripcion="Descripcion del producto 2";
  p2.activo=true;
  p2.precio=20.0;
  p2.stock=20;
  print("Codigo: ${p2.codigo}");
  print("Nombre: ${p2.nombre}");
  print("Descripcion: ${p2.descripcion}");
  print("Activo: ${p2.activo}");
  print("Precio: ${p2.precio}");
  print("Stock: ${p2.stock}");

  final p3 = Producto();
  p3.codigo="3";
  p3.nombre="Producto 3";
  p3.descripcion="Descripcion del producto 3";
  p3.activo=true;
  p3.precio=30.0;
  p3.stock=30;
  print("Codigo: ${p3.codigo}");
  print("Nombre: ${p3.nombre}");
  print("Descripcion: ${p3.descripcion}");
  print("Activo: ${p3.activo}");
  print("Precio: ${p3.precio}");
  print("Stock: ${p3.stock}");

}
