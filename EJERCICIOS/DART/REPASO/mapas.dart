void main() {
  Map<String, int> poblacion = {
    'Quito': 2000000,
    'Guayaquil': 1500000,
    'Cuenca': 500000,
    'Loja': 300000,
    'Manta': 200000,
  };

  print(poblacion);
  print(poblacion.keys);
  print(poblacion.values);
  print(poblacion.containsKey('Quito'));
  print(poblacion['Quito']);
  poblacion['Quito'] = 2500000;
  print(poblacion);
  poblacion.remove('Quito');
  print(poblacion);

  Map<String, List<String>> regiones = {
    'Galápagos': ['Isabela', 'San Cristóbal', 'Santa Cruz'],
    'Península': ['Guayaquil', 'Cuenca', 'Loja', 'Manta'],
  };

  print(regiones);
  print(regiones['Galápagos']![1]);
}
