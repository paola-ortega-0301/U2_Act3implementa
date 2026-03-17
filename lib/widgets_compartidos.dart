import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final bool mostrarIconos;
  const CustomHeader({super.key, this.mostrarIconos = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.deepPurple,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SafeArea(
            bottom: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                Column(
                  children: const [
                    Text("EVENTOS", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 4)),
                    Text("POPLAS", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300)),
                  ],
                ),
                const Expanded(
                  child: Text("Paola Ortega 6J", textAlign: TextAlign.end, style: TextStyle(color: Colors.white70, fontSize: 10)),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.pinkAccent.shade100,
          width: double.infinity,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: mostrarIconos
              ? Row(
                  children: [
                    Builder(
                      builder: (context) => IconButton(
                        icon: const Icon(Icons.menu, color: Colors.black, size: 26),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.shopping_cart, color: Colors.black, size: 26),
                    const SizedBox(width: 20),
                    const Icon(Icons.person, color: Colors.black, size: 26),
                  ],
                )
              : const SizedBox(),
        ),
      ],
    );
  }
}

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.deepPurple),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4SVoEHFTQ599mTnAIKAdY6sNLp0Xq8EEtNQ&s'),
            ),
            accountName: const Text("Eventos Poplas S.A.", style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("contacto@poplas.com"),
                Text("📍 Av. Principal #123, Col. Centro", style: TextStyle(fontSize: 11)),
                Text("📞 Tel: +52 656 123 4567", style: TextStyle(fontSize: 11)),
              ],
            ),
          ),
          _item(context, Icons.home, "Inicio", '/'),
          _item(context, Icons.room_service, "Servicios", '/servicios'),
          _item(context, Icons.person_outline, "Perfil", '/perfil'),
          const Divider(),
          _item(context, Icons.logout, "Cerrar Sesión", '/salir', color: Colors.red),
        ],
      ),
    );
  }

  Widget _item(BuildContext context, IconData icono, String nombre, String ruta, {Color color = Colors.purple}) {
    return ListTile(
      leading: Icon(icono, color: color),
      title: Text(nombre, style: TextStyle(color: color == Colors.red ? Colors.red : Colors.black)),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, ruta);
      },
    );
  }
}