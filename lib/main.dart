import 'package:flutter/material.dart';
import 'LasPaginas/inicio.dart';
import 'LasPaginas/servicios.dart'; // Asegúrate de crear estos archivos
import 'LasPaginas/perfil.dart';
import 'LasPaginas/salir.dart';

void main() => runApp(const EventosPoplasApp());

class EventosPoplasApp extends StatelessWidget {
  const EventosPoplasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioPage(),
        '/servicios': (context) => const ServiciosPage(), // Estas clases deben estar en sus archivos
        '/perfil': (context) => const PerfilPage(),
        '/salir': (context) => const SalirPage(),
      },
    );
  }
}