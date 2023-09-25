import 'package:ecommerce_ui/models/cart.dart';
import 'package:ecommerce_ui/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Cart(),builder: (context,child)=> const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ),);
  }
}
