import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';


void main() {
  runApp(MaterialApp(
    home: Home()

  ));
}
class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SandBox'),
        backgroundColor: const Color.fromARGB(255, 102, 181, 250),
        centerTitle: true,
      ),

      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: const Text('Caja 1'),
          ),

           Container(
            height: 200,
            color: Colors.blue,
            child: const Text('Caja 2'),
          ),

           Container(
            height: 300,
            color: Colors.green,
            child: const Text('Caja '),
          ),
        ],),
    );
  }
}