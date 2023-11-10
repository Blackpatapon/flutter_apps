import 'package:flutter/material.dart';
import 'package:logistica_internacional/screen/menu.dart';

void main() {
  runApp(const PerfilEgreso());
}

class PerfilEgreso extends StatelessWidget {
  const PerfilEgreso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 84, 224, 3),
        hintColor: const Color.fromARGB(255, 240, 233, 233),
        scaffoldBackgroundColor: const Color.fromARGB(255, 235, 235, 235),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 12, 124, 27),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ING. PERFIL DE EGRESO',
            style: TextStyle(fontSize: 20.0),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Menu()),
              );
            },
          ),
        ),
        body: const MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text(
          "Perfil de Egreso",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 10),
        Text(
          "El ingeniero en logística internacional podrá desenvolverse en:",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1) Empresas públicas y privadas dedicadas al abastecimiento, transportación, distribución y comercialización de mercancías.",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Text(
              "2) Empresas dedicadas a la transportación nacional e internacional de mercancías.",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Text(
              "3) Empresas dedicadas a los servicios de operación logística y de subcontratación.",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
