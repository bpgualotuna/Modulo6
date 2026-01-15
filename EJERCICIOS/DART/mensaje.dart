class mensaje {
  void saludar(String nombre, String apellido, String apodo) {
    print("hola $nombre $apellido, alias $apodo");
  }

  void darBienvenida(String nombre, String apellido, String? apodo) {
    print("bienvenido $nombre $apellido, alias $apodo");
  }

  void despedirse({String nombre = "", String apellido = "", String? apodo}) {
    print("Adios $nombre $apellido, alias $apodo");
  }

  void animar({
    required String nombre,
    required String apellido,
    String? apodo,
  }) {
    print("Adios $nombre $apellido, alias $apodo");
  }
   void test( String param1, {String param2="defecto", required String param3}){
     print("$param1 $param2 $param3");
}
}

void main() {
  final msg = mensaje();
  msg.saludar("Brayan", "Gualotuna", "");
  msg.darBienvenida("Brayan", "Gualotuna", null);
  msg.darBienvenida("Brayan", "Gualotuna", "Brayan");
  msg.despedirse(apodo: "Gualo");
  msg.animar(nombre: "Brayan", apellido: "Gualotuna", apodo: "Brayan");
  msg.test("Brayan", param3: "Gualotuna");
}


