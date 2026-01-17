import 'servidor_correo.dart';

main() {
  
  var servidor1 = ServidorCorreo();
  var servidor2 = ServidorCorreo();

  servidor1.conectar();

  servidor1.enviarCorreo('juan@gmail.com', 'Reunión importante');
  servidor2.enviarCorreo('maria@gmail.com', 'Informe mensual');

  print('\n¿Son la misma instancia? ${servidor1 == servidor2}');

  print('\n¿Servidor 1 conectado? ${servidor1.estaConectado}');
  print('¿Servidor 2 conectado? ${servidor2.estaConectado}');

  servidor1.desconectar();
}
