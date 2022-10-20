import 'package:carrito_compras/carrito/Carrito.dart';
import 'package:flutter/material.dart';
import 'package:carrito_compras/pantallaInicio.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
    // declarar con que clase va a trabajar
    create: (context) => Carrito(),
    child: MyApp(),
  )
);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carrito de Compras',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PantallaInicio(),
    );
  }

}


