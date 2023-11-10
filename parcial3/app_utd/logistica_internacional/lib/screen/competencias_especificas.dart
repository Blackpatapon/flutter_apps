import 'package:flutter/material.dart';
import 'package:logistica_internacional/screen/menu.dart';

void main() {
  runApp(const CompEspe());
}

class CompEspe extends StatelessWidget {
  const CompEspe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 84, 224, 3),
        hintColor: const Color.fromARGB(255, 240, 233, 233),
        scaffoldBackgroundColor: const Color.fromARGB(255, 235, 235, 235),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 12, 124, 27),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ING. COMPETENCIAS ESPECIFICAS',
            style: TextStyle(fontSize: 20.0),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Menu()),
              );
            },
          ),
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
      children: const [
        Text(
          "Competencias Especificas",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 10),
        Text(
          "Dirigir proyectos de negocios y de actividades logísticas, utilizando fuentes de información y técnicas especializadas, para apoyar a la competitividad y rentabilidad de la organización.",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1) Dirigir la gestión de mercados nacionales e internacionales, a través de la elaboración de un estudio de factibilidad, plan de negocios nacional y de exportación, que permita identificar la viabilidad comercial, con la finalidad de ampliar la cobertura y posicionamiento de la organización. Administrar la subcontracción de los procesos logísticos, a través de la identificación de las necesidades de la empresa y/o cliente, con la finalidad de optimizar recursos para la organización.",
              style: TextStyle(fontSize: 10, color: Colors.black),
            ),
          ],
        ),
        Text(
          "Dirigir la comercialización de productos y/o servicios a través de establecer estrategias de atención a clientes y ventas, con el fin de satisfacer los requerimientos de los clientes y proveedores.",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1) Dirigir un programa de atención a clientes, mediante técnicas de seguimiento y atención, para la toma de decisiones y búsqueda de áreas de oportunidad.",
              style: TextStyle(fontSize: 10, color: Colors.black),
            ),
            Text(
              "2) Administrar el proceso de ventas mediante técnicas de negociación y protocolo, para acrecentar la cartera de clientes de la organización.",
              style: TextStyle(fontSize: 10, color: Colors.black),
            ),
          ],
        ),
        Text(
          "Supervisar el tráfico nacional e internacional de mercancías a través de la selección y modos de transporte, su envase, embalaje y considerando las regulaciones pertinentes para garantizar la entrega efectiva y oportuna a los clientes.",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1) Administrar el tráfico de mercancías, considerando sus características, e identificando los modos de transporte, destinos, envase y embalaje, la normatividad y regulaciones pertinentes a nivel nacional e internacional, para garantizar el cumplimiento del servicio contratado.",
              style: TextStyle(fontSize: 10, color: Colors.black),
            ),
            Text(
              "2) Organizar el abastecimiento de insumos, a través de aplicar técnicas de selección de proveedores, con apoyo de los procedimientos y políticas de la organización, que permita contribuir el buen funcionamiento de las operaciones.",
              style: TextStyle(fontSize: 10, color: Colors.black),
            ),
            Text(
              "3) Dirigir el almacenamiento de mercancías, a través de técnicas de clasificación y control de inventarios y manejo de materiales para abastecer eficientemente la operación o las necesidades del cliente",
              style: TextStyle(fontSize: 10, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
