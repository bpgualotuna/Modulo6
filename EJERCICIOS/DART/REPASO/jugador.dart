class Jugador {
  static const String nombreJuego = "Aventura Epica";
  final int id;
  late String nombre;
  var puntuacion;
  dynamic extra;

  Jugador(this.id);
}

void main(){
    
    Jugador jugador1 = Jugador(1);
    jugador1.nombre = "Brayan";
    jugador1.puntuacion = 100;
    jugador1.extra = "Extra";
    print(jugador1.nombre);
    print(jugador1.puntuacion);
    print(jugador1.extra);
    print(Jugador.nombreJuego);
}
