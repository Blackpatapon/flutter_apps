import 'package:app_movil_s2/main.dart';
// ignore: unused_import
import 'package:app_movil_s2/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Otro());

class Otro extends StatelessWidget {
  const Otro({super.key});

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
        appBar: AppBar(
          title: const Text('Otro Halloween',style: TextStyle(fontSize: 38.0),),
          actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
          ),
        ]
        ),
        body: const Center(
          child: Text('Otro Screen Halloween'),
        ),
      ),
    );
  }
}