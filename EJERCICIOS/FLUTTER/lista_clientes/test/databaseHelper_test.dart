import 'package:lista_clientes/databaseHelper.dart';
import 'package:lista_clientes/product.dart';
import 'package:test/test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  sqfliteFfiInit();

  databaseFactory = databaseFactoryFfi;

  late DatabaseHelper databaseHelper;

  setUp(() async {
    databaseHelper = DatabaseHelper();
  });

  test('insertProduct', () async {
    var product = Product(
      id: 1,
      name: 'Test Product',
      price: 9.99,
      description: 'Test Description',
      email: 'test@example.com',
    );
    await databaseHelper.insertProduct(product);

    var products = await databaseHelper.getProducts();

    for (var product in products) {
      print(
        'ID: ${product.id}, Product: ${product.name}, Price: ${product.price}, Description: ${product.description}',
      );
    }
  });

  test('deleteProduct', () async {
    await databaseHelper.deleteProduct(1);
    var products = await databaseHelper.getProducts();
    for (var product in products) {
      print(
        'ID: ${product.id}, Product: ${product.name}, Price: ${product.price}, Description: ${product.description}',
      );
    }
  });

  test('updateProduct', () async {
    var product = Product(
      id: 1,
      name: 'Test Product',
      price: 93.99,
      description: 'Test Description',
      email: 'test@example.com',
    );
    await databaseHelper.insertProduct(product);
    var products = await databaseHelper.getProducts();
    for (var product in products) {
      print(
        'ID: ${product.id}, Product: ${product.name}, Price: ${product.price}, Description: ${product.description}',
      );
    }
  });

  test('getProducts', () async {
    var products = await databaseHelper.getProducts();
    for (var product in products) {
      print(
        'ID: ${product.id}, Product: ${product.name}, Price: ${product.price}, Description: ${product.description}',
      );
    }
  });
}
