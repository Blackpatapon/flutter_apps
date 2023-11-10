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
          title: const Text('Otro Halloween', style: TextStyle(fontSize: 38.0)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
          ),
          actions: [
            GestureDetector(
              onTap: () {
                
              },
              child: const SizedBox(
                width: 40, 
                height: 40, 
                child: Material(
                  color: Color.fromARGB(255, 132, 1, 255),
                  shape: CircleBorder(),
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 150.0,
                  backgroundColor: Color.fromARGB(255, 167, 167, 167),
                  backgroundImage: AssetImage('assets/imagenes/logo.png'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}