import 'package:flutter/material.dart';
import '../widgets_compartidos.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

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
                  const Text(
                    "Nuestros Servicios",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                  const SizedBox(height: 10),
                  const Text("Calidad garantizada para tu evento"),
                  const SizedBox(height: 30),
                  // Imagen desde GitHub
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://raw.githubusercontent.com/paola-ortega-0301/Imagenes-Unidad-2/refs/heads/main/3.jpg",
                      height: 200,
                      width: 200,
                      fit: BoxFit.contain,
                    ),
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
