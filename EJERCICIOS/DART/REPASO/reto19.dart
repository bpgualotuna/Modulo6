main() async {
  print('=== Situación 1: Preparar café ===\n');
  await prepararCafe();

  print('\n=== Situación 2: Descargar archivo ===\n');
  await descargarArchivo();
}

prepararCafe() async {
  print('Pongo agua a hervir...');
  print('Mientras tanto, busco la taza');
  print('Saco el café del armario');
  
  await Future.delayed(Duration(seconds: 3));
  print('El agua ya está lista!');

  print('Preparo el café');
  print('Café listo para tomar!');
}

descargarArchivo() async {
  print('Inicio la descarga del archivo...');
  print('Mientras tanto, reviso mi correo');
  print('Respondo algunos mensajes');

  await Future.delayed(Duration(seconds: 2));
  print('La descarga ha finalizado!');

  print('Abro el archivo descargado');
}
