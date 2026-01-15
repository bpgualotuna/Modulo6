class Rectangulo{
  int base=0;
  int altura=0;

  int calcularArea(){
    return base*altura;
  }

  int calcularPerimetro(){
    return (base+altura)*2;
  }

  Rectangulo(this.base,this.altura);
}

void main(){
  final r1 = Rectangulo(10, 20);
  print("Area: ${r1.calcularArea()}");
  print("Perimetro: ${r1.calcularPerimetro()}");
}