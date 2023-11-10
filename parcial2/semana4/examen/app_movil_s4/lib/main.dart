import 'package:app_movil_s2/screen/alertas_screen.dart';
import 'package:app_movil_s2/screen/formulario_screen.dart';
import 'package:app_movil_s2/screen/home_screen.dart';
import 'package:app_movil_s2/screen/imagenes_screen.dart';
import 'package:app_movil_s2/screen/otro_screen.dart';
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
          title: const Text('Semana 4',style: TextStyle(fontSize: 38.0),),
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
              Text("HomeScreen",style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Forms()),
            );
          },
          child: const Row(
            children: [
              Icon(Icons.folder,size: 50.0,color: Colors.white,),
              SizedBox(width: 10), // Espacio entre el icono y el texto
              Text("Formulario",style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ImagenScreen()),
            );
          },
          child: const Row(
            children: [
              Icon(Icons.image,size: 50.0,color: Colors.white,),
              SizedBox(width: 10), // Espacio entre el icono y el texto
              Text("Imagenes",style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Otro()),
            );
          },
          child: const Row(
            children: [
              Icon(Icons.devices_other,size: 50.0,color: Colors.white,),
              SizedBox(width: 10), // Espacio entre el icono y el texto
              Text("Otro",style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Alerta()),
            );
          },
          child: const Row(
            children: [
              Icon(Icons.message,size: 50.0,color: Colors.white,),
              SizedBox(width: 10), // Espacio entre el icono y el texto
              Text("AlertaScreen",style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ],
          ),
        ),
      ],
    );
  }
}
