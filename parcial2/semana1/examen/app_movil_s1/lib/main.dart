import 'package:app_movil_s1/screen/home_screen.dart';
import 'package:app_movil_s1/screen/menu_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
      home: const MyHomePage(title: 'Main Halloween'),
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
          // Acción a realizar al presionar el botón de acción del SnackBar
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: _showMessage, // Llama a la función al presionar el botón
          ),
          IconButton(
            icon: const Icon(Icons.arrow_right),
            onPressed: (){
              Navigator.push(
                context,
              MaterialPageRoute(builder: (context)=>const MenuScreen())
              );
            }
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/imagenes/yujiro4.jpeg'),
            const Text(
              'YUIJRO HANMA',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 0, 0), 
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>const HomeScreen())
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              child: const Text(
                'Página Home Halloween',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}