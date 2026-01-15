import 'package:flutter/material.dart';
import 'package:navigation/pages/customers_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/listview_pages.dart';
import 'package:navigation/pages/productList_page.dart';
import 'package:navigation/pages/products_page.dart';
import 'package:navigation/pages/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        Routes.products: (context) {
          return const ProductsPage();
        },
        Routes.customers: (context) {
          return const CustomersPage();
        },
        Routes.listview: (context) {
          return const ListviewPage();
        },
        Routes.productList: (context) {
          return ProductListPage();
        },
      },
    );
  }
}
