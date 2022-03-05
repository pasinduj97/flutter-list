import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/cart_provider.dart';
import 'package:untitled/screens/home.dart';
import 'package:untitled/screens/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        initialRoute: Home.routeName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.amber
        ),
        routes: {
          Home.routeName: (context) => Home(),
          Shop.routeName: (context) => Shop()
        },),
    );
  }
}





