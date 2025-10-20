import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Serpientica Programadora'),
        backgroundColor: const Color.fromARGB(255, 102, 181, 250),
        centerTitle: true,
      ),

      body: const Home(),
    ),

  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: const Color.fromARGB(255, 204, 229, 255),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(10, 40, 10, 0),
      child: const Text( 'Hola jhon bienviendio a ip ',
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),

    );
  }
}

