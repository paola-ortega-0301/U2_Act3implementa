import 'package:flutter/material.dart';
import '../widgets_compartidos.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

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
                    "Mi Perfil",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  // Imagen de perfil desde GitHub
                  const CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/paola-ortega-0301/Imagenes-Unidad-2/refs/heads/main/4.png",
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Paola Ortega",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  const Text("paola.ortega@ejemplo.com", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
