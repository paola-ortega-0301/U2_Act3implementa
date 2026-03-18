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
                  Image.network("https://raw.githubusercontent.com/paola-ortega-0301/Imagenes-Unidad-2/refs/heads/main/1.jpg", height: 200),
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
