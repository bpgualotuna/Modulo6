import 'taller.dart';
import 'tienda.dart';

void main() {
  print(" EJERCICIO A: Gestión de Vehículos en un Taller \n");

  final empleado1 = Empleado("Carlos");
  print("Empleado creado: ${empleado1.nombre}");

  final taller1 = Taller("AutoFix", "Bienvenido al Taller");
  print("Mensaje inicial: ${taller1.mensajeGeneral}");
  empleado1.actualizarMensajeDelTaller(
    taller1,
    "¡Servicio de calidad garantizado!",
  );
  print("Mensaje actualizado: ${taller1.mensajeGeneral}\n");

  final vehiculo1 = Vehiculo("ABC-123");
  final vehiculo2 = Vehiculo("XYZ-789");

  vehiculo1.registrarDiagnostico("Cambio de aceite y filtros");
  vehiculo2.registrarDiagnostico("Reparación de frenos");

  vehiculo1.extraInfo = "Cliente frecuente";
  vehiculo2.extraInfo = 150.75;

  print("Resumen Vehículo 1:");
  print(vehiculo1.resumen());
  print("\nResumen Vehículo 2:");
  print(vehiculo2.resumen());

  taller1.incrementarContador();
  taller1.incrementarContador();
  print("\nTotal de reparaciones: ${taller1.obtenerReparaciones()}");

  print("\n EJERCICIO B: Inventario de Productos en una Tienda \n");

  final producto1 = Producto("P001");
  final producto2 = Producto("P002");

  final tienda1 = Tienda("MegaTienda", "Ofertas de temporada");
  producto1.registrarVenta(
    "Laptop HP",
    899.99,
    "Incluye garantía extendida",
    tienda1,
  );
  producto2.registrarVenta("Mouse inalámbrico", 25.50, "Color negro", tienda1);

  print("Anuncio inicial: ${tienda1.anuncio}");
  tienda1.cambiarAnuncio("¡Gran liquidación de fin de año!");
  print("Anuncio actualizado: ${tienda1.anuncio}\n");
  print("Resumen Producto 1:");
  print(producto1.resumen());
  print("\nResumen Producto 2:");
  print(producto2.resumen());

  print("\nTotal de productos vendidos: ${tienda1.obtenerVentas()}");
}
