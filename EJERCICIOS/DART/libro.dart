// Crear un archivo libro.dart, dentro del mismo, crear una clase Libro, con los atributos:
//   ISBN de tipo String, no admite null
//   titulo de tipo String, no admite null
//   numeroPaginas, de tipo int, si admite null
//   descripcion de tipo String, si admite null
//   Agregar un constructor con parámetros para que los atributos se puedan inicializar con los valores
// que recibe el constructor.

// Agregar un método main para crear objetos usando el constructor.

class Libro{
  String isbn;
  String titulo;
  int? numeroPaginas;
  String? descripcion;

  Libro(this.isbn,this.titulo,this.numeroPaginas,this.descripcion);
}


void main(){
  Libro libro = Libro("123456789","Libro 1",100,"Descripcion 1");
  print(libro.isbn);
  print(libro.titulo);
  print(libro.numeroPaginas);
  print(libro.descripcion);
}