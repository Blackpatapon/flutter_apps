import 'package:flutter/material.dart';
import 'package:logistica_internacional/screen/competencias_especificas.dart';
import 'package:logistica_internacional/screen/competencias_genericas.dart';
import 'package:logistica_internacional/screen/ocupaciones.dart';
import 'package:logistica_internacional/screen/perfil_egreso.dart';

void main() {
  runApp(const Menu());
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

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
            'UTD - ING. Logistica Internacional',
            style: TextStyle(fontSize: 20.0),
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
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.only(top: 50, bottom: 50),
              child: Image.asset("assets/images/utd-logo.png"),
            ),
            Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.only(top: 50, bottom: 50),
              child: Image.asset("assets/images/bufalo.png"),
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PerfilEgreso()),
            );
          },
          child: const Row(
            children: [
              Icon(
                Icons.image,
                size: 50.0,
                color: Color.fromARGB(255, 245, 101, 5),
              ),
              SizedBox(width: 10), // Espacio entre el icono y el texto
              Text(
                "Perfil de Egreso",
                style: TextStyle(
                    fontSize: 25.0, color: Color.fromARGB(255, 235, 121, 14)),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ocupacion()),
            );
          },
          child: const Row(
            children: [
              Icon(
                Icons.image,
                size: 50.0,
                color: Color.fromARGB(255, 245, 101, 5),
              ),
              SizedBox(width: 10), // Espacio entre el icono y el texto
              Text(
                "Ocupaciones",
                style: TextStyle(
                    fontSize: 25.0, color: Color.fromARGB(255, 235, 121, 14)),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CompGen()),
            );
          },
          child: const Row(
            children: [
              Icon(
                Icons.image,
                size: 50.0,
                color: Color.fromARGB(255, 245, 101, 5),
              ),
              SizedBox(width: 10), // Espacio entre el icono y el texto
              Text(
                "Competencias Genericas",
                style: TextStyle(
                    fontSize: 25.0, color: Color.fromARGB(255, 235, 121, 14)),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CompEspe()),
            );
          },
          child: const Row(
            children: [
              Icon(
                Icons.image,
                size: 50.0,
                color: Color.fromARGB(255, 245, 101, 5),
              ),
              SizedBox(width: 10), // Espacio entre el icono y el texto
              Text(
                "Comptenecias Especificas",
                style: TextStyle(
                    fontSize: 25.0, color: Color.fromARGB(255, 235, 121, 14)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
