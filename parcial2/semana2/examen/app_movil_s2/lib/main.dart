import 'package:app_movil_s2/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          title: const Text('Semana 2'),
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
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          child: const Row(
            children: [
              Icon(Icons.home,size: 50.0,color: Colors.white,),
              SizedBox(width: 10), // Espacio entre el icono y el texto
              Text("Ir a Home",style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ],
          ),
        ),
      ],
    );
  }
}
