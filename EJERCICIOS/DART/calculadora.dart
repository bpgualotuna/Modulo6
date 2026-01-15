class Calculadora{
  int sumar(int valor1, int valor2){
    return valor1+valor2;
  }
}

void main(){
  final c=Calculadora();
  print(c.sumar(1, 2));
}