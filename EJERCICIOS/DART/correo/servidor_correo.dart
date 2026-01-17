class ServidorCorreo {
  static ServidorCorreo? _instancia;
  bool _conectado = false;

  ServidorCorreo._();

  factory ServidorCorreo() {
    _instancia ??= ServidorCorreo._();
    return _instancia!;
  }

  bool get estaConectado => _conectado;

  conectar() {
    if (_conectado) {
      print('Ya existe una conexión activa');
    } else {
      _conectado = true;
      print('Conexión establecida');
    }
  }

  enviarCorreo(String destinatario, String asunto) {
    if (_conectado) {
      print('Enviando correo a $destinatario con asunto: $asunto');
    } else {
      print('Error: El servidor no está conectado');
    }
  }

  desconectar() {
    if (_conectado) {
      _conectado = false;
      print('Servidor desconectado');
    } else {
      print('El servidor ya está desconectado');
    }
  }
}
