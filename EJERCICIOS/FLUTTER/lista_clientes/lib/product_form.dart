import 'package:flutter/material.dart';
import 'databaseHelper.dart';
import 'product.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final priceController = TextEditingController();
    final descriptionController = TextEditingController();
    final emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Ingreso de Productos')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Nombre Producto',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Precio',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Descripción',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Correo',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final product = Product(
                  id: DateTime.now().millisecondsSinceEpoch,
                  name: nameController.text,
                  price: double.parse(priceController.text),
                  description: descriptionController.text,
                  email: emailController.text,
                );
                DatabaseHelper().insertProduct(product);
                print('Producto guardado: ${product.name}');
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Producto guardado')),
                );
                Navigator.pop(context, true);
              },
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
