import 'package:flutter/material.dart';
import 'package:flutter_application_1/contenido_m1.dart';
import 'package:flutter_application_1/styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Serpientica Programadora', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,


        ),),
        backgroundColor: const Color.fromARGB(255, 0, 93, 116),
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ 
          Container(
            color: const Color.fromARGB(255, 45, 182, 210),
            padding: const EdgeInsets.all(20),
            child: const StyledBodyText('Mundo 1: Funciones'),
          ),

          Container(
            color: const Color.fromARGB(255, 133, 223, 240),
            padding: const EdgeInsets.all(20),
            child: const ContenidoM1(),  
          ),

          Expanded (child: Image.asset('assets/img/snake.png',
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomCenter,)),

          
           
        ],
      ),
    );
  }
}

