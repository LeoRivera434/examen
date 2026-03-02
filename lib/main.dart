import 'package:flutter/material.dart';
import 'mispantallas/Inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Perfumería Elite',
    // Definimos un tema base más limpio
    theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xFF1A1A1A), // Gris casi negro
      primaryColor: const Color(0xFFB71C1C), // Rojo Carmesí
      hintColor: Colors.white70,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => Inicio(),
      '/pantalla2': (context) => Pantalla2(),
      '/pantalla3': (context) => Pantalla3(),
    },
  ));
}