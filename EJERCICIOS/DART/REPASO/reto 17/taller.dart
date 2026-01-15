class Taller {
  final String nombre;
  String mensajeGeneral;
  int _totalReparaciones = 0;

  Taller(this.nombre, this.mensajeGeneral);

  void cambiarMensaje(String nuevoMensaje) {
    mensajeGeneral = nuevoMensaje;
  }

  void incrementarContador() {
    _totalReparaciones++;
  }

  int obtenerReparaciones() {
    return _totalReparaciones;
  }
}

class Empleado {
  String nombre;

  Empleado(this.nombre);

  void actualizarMensajeDelTaller(Taller taller, String mensaje) {
    taller.cambiarMensaje(mensaje);
  }
}

class Vehiculo {
  String placa;
  String diagnostico;
  String estado;
  dynamic extraInfo;

  Vehiculo(this.placa) : diagnostico = "", estado = "Pendiente", extraInfo = "";

  void registrarDiagnostico(String texto) {
    diagnostico = texto;
    estado = "Reparado";
  }

  String resumen() {
    return "Placa: $placa, Diagnóstico: $diagnostico, Estado: $estado, Extra: $extraInfo";
  }
}
