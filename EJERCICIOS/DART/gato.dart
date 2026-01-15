import 'animal.dart';

class Gato extends Animal{

  @override
  void dormir(){
    print("gato durmiendo");
  }
}

void main(){
  final gato = Gato();
  gato.dormir();
}
