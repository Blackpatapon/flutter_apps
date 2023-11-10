import 'package:app_movil_s2/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Alerta());

class Alerta extends StatelessWidget {
  const Alerta({super.key});

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('FLUTTER', style: TextStyle(color: Color.fromARGB(255, 255, 0, 0),fontSize: 30.0)),
          content: const Text(
            'Flutter es un SDK de codigo abierto desarrollado por google para crear apps multiplataforma.',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 20.0),
          ),
          backgroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          actions: <Widget>[
            const FlutterLogo(size: 70.0),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar', style: TextStyle(color: Color.fromARGB(255, 255, 0, 0),fontSize: 25.0)),
            ),
          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.orange,
        hintColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.orange,
        ),
      ),
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _mostrarAlerta(context);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.purple,
            ),
            child: const Text(
              'Mostrar Alerta',
              style: TextStyle(fontSize: 42.0),
            ),
          )
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainScreen()),
          );
        },
        backgroundColor: const Color.fromARGB(255, 188, 14, 223),
        child: const Icon(Icons.close),
      ),
      ),
    );
  }
}
