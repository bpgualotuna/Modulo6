import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => CalculatorPageState();
}

class CalculatorPageState extends State<CalculatorPage> {
  int valor1 = 0;
  int valor2 = 0;
  int resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Valor 1"),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (text) {
                valor1 = int.parse(text);
              },
            ),
            const SizedBox(height: 20),
            Text("Valor 2"),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (text) {
                valor2 = int.parse(text);
              },
            ),
            const SizedBox(height: 30),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                resultado = valor1 + valor2;
                setState(() {});
              },
              child: const Text("SUMAR"),
            ),
            const SizedBox(height: 30),
            Text(
              'Resultado: $resultado',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
