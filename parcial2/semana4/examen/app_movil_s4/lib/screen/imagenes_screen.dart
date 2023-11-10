import 'package:app_movil_s2/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ImagenScreen());

class ImagenScreen extends StatelessWidget {
  const ImagenScreen({Key? key}) : super(key: key);

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
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Imagen Halloween', style: TextStyle(fontSize: 38.0)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        body: ListView(
          children: <Widget>[
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image.asset('assets/imagenes/yujiro5.jpg'),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image.asset('assets/imagenes/yujiro1.jpg'),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image.asset('assets/imagenes/yujiro2.jpg'),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image.asset('assets/imagenes/yujiro3.jpeg'),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image.asset('assets/imagenes/yujiro4.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}
