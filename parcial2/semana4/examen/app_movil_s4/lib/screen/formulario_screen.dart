// ignore_for_file: unused_local_variable, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:app_movil_s2/main.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _registerUser() {
    // ignore: unused_local_variable
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halloween App',
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
          title: const Text('Forms Halloween', style: TextStyle(fontSize: 38.0)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundColor: Color.fromARGB(255, 167, 167, 167),
                backgroundImage: AssetImage('assets/imagenes/logo.png'),
              ),
              const Text(
                "Register",
                style: TextStyle(fontFamily: 'Arial', fontSize: 35.0),
              ),
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  hintText: 'Nombre de usuario',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Correo electrónico',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  hintText: 'Contraseña',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.purple,
                ),
                onPressed: _registerUser,
                child: const Text('Registrarse',style: TextStyle(fontSize: 23.0),),
              ),
              const SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                 
                },
                child: const Text('¿Ya tienes una cuenta? Inicia sesión',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
