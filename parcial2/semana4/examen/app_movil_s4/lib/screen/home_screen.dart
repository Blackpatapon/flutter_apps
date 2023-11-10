import 'package:app_movil_s2/main.dart';
import 'package:app_movil_s2/screen/imagenes_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
      home: const MyHomePage(title: 'Home Halloween'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_field
  int _counter = 0;

  // ignore: unused_element
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _showMessage() {
    final snackBar = SnackBar(
      content: const Text('Este es un mensaje'),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: const TextStyle(fontSize: 26.0),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notification_add),
            onPressed: _showMessage,
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ImagenScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/imagenes/yujiro4.jpeg'),
            const Text(
              'YUJIRO HANMA',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ImagenScreen()),
          );
        },
        backgroundColor: const Color.fromARGB(255, 188, 14, 223),
        child: const Icon(Icons.add),
      ),
    );
  }
}