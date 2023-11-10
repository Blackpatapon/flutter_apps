import 'package:flutter/material.dart';
import 'package:logistica_internacional/screen/menu.dart';

void main() {
  runApp(const CompGen());
}

class CompGen extends StatelessWidget {
  const CompGen({Key? key}) : super(key: key);

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
            'ING. COMPETENCIAS GENERICAS',
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
          "Competencias Genericas",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 10),
        Text(
          "Capacidad de análisis y síntesis, habilidades para la investigación básica, las capacidades individuales y las destrezas sociales; habilidades gerenciales y las habilidades para comunicarse en un segundo idioma.",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
