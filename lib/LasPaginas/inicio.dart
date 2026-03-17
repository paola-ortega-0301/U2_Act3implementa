import 'package:flutter/material.dart';
import '../widgets_compartidos.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuLateral(),
      body: Column(
        children: [
          const CustomHeader(mostrarIconos: true),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Organiza tus eventos aquí", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30),
                  Image.network("https://plus.unsplash.com/premium_photo-1681488068521-8912e7d5d5fd?w=300", height: 200),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/servicios'),
                    child: const Text("Ver Servicios"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}