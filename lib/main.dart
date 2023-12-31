import 'package:flutter/material.dart';

import 'pages/shopping_list.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      key: const Key("tittle"),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ShoppingListPage(),
    );
  }
}
