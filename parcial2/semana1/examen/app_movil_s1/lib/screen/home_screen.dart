import 'package:app_movil_s1/main.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(
                context,
              MaterialPageRoute(builder: (context)=>const MainScreen())
              );
            }
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/imagenes/yujiro1.jpg'),
            const Text(
              'EPALDA DE DEMONIO',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 0, 0), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}