import 'package:flutter/material.dart';
import '../widgets_compartidos.dart';

class SalirPage extends StatelessWidget {
  const SalirPage({super.key});

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
                    "Sesión Cerrada",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.redAccent),
                  ),
                  const SizedBox(height: 10),
                  const Text("¡Vuelve pronto a Eventos Poplas!"),
                  const SizedBox(height: 30),
                  // Imagen de despedida desde GitHub
                  Image.network(
                    "https://raw.githubusercontent.com/paola-ortega-0301/imagenes-pantalla/refs/heads/main/1.jpg",
                    height: 200,
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
                    onPressed: () {
                      // Regresa al inicio y elimina las rutas previas
                      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                    },
                    child: const Text("Volver al Inicio", style: TextStyle(color: Colors.white)),
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
