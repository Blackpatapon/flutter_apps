import 'package:flutter/material.dart';
import 'package:logistica_internacional/screen/menu.dart';

void main() {
  runApp(const Ocupacion());
}

class Ocupacion extends StatelessWidget {
  const Ocupacion({Key? key}) : super(key: key);

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
            'ING. OCUPACIONES',
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
          "Ocupaciones",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 10),
        Text(
          "Podrá desempeñarse como:",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1) Ingeniero de operaciones, de logística en industrias de manufactura, maquiladoras y empresas comerciales y de distribución.",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Text(
              "2) Gerente de tráfico, de servicio al cliente, de operación aduanera en empresas de transporte.",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Text(
              "3) Gerente comercial, de operaciones o de abastecimiento, en empresas comerciales y de distribución.",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
