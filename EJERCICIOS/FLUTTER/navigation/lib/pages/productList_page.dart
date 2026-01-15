import 'package:flutter/material.dart';
import 'package:navigation/pages/product_pages.dart';

class ProductListPage extends StatelessWidget {
  final List<Product> products=[
    Product(name: "Producto 1", price: 10.0, description: "Descripcion del producto 1"),
    Product(name: "Producto 2", price: 20.0, description: "Descripcion del producto 2"),
    Product(name: "Producto 3", price: 30.0, description: "Descripcion del producto 3"),
    Product(name: "Producto 4", price: 40.0, description: "Descripcion del producto 4"),
    Product(name: "Producto 5", price: 50.0, description: "Descripcion del producto 5"),
    Product(name: "Producto 6", price: 60.0, description: "Descripcion del producto 6"),
    Product(name: "Producto 7", price: 70.0, description: "Descripcion del producto 7"),
    Product(name: "Producto 8", price: 80.0, description: "Descripcion del producto 8"),
    Product(name: "Producto 9", price: 90.0, description: "Descripcion del producto 9"),
    Product(name: "Producto 10", price: 100.0, description: "Descripcion del producto 10"),
    Product(name: "Producto 11", price: 110.0, description: "Descripcion del producto 11"),
    Product(name: "Producto 12", price: 120.0, description: "Descripcion del producto 12"),
    Product(name: "Producto 13", price: 130.0, description: "Descripcion del producto 13"),
    Product(name: "Producto 14", price: 140.0, description: "Descripcion del producto 14"),
    Product(name: "Producto 15", price: 150.0, description: "Descripcion del producto 15"),
    Product(name: "Producto 16", price: 160.0, description: "Descripcion del producto 16"),
    Product(name: "Producto 17", price: 170.0, description: "Descripcion del producto 17"),
    Product(name: "Producto 18", price: 180.0, description: "Descripcion del producto 18"),
    Product(name: "Producto 19", price: 190.0, description: "Descripcion del producto 19"),
    Product(name: "Producto 20", price: 200.0, description: "Descripcion del producto 20"),    
  ];

  ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].description),
            trailing: Text("\$${products[index].price.toStringAsFixed(2)}"),
            leading: Icon(
              Icons.add_to_queue,
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
