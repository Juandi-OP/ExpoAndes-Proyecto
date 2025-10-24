import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles.dart';

class ContenidoM1 extends StatefulWidget {
  const ContenidoM1({super.key});

  @override
  State<ContenidoM1> createState() => _ContenidoM1State();
}

class _ContenidoM1State extends State<ContenidoM1> {
  int dificultad =1;
  int numeroEjercicios = 0;

  void incrementarDificultad() {
    setState(() {
       dificultad = dificultad < 5 ? dificultad +1 : 1; 
    });
   
    // Lógica para incrementar la dificultad
  }

  void incrementarEjercicios() {
    setState(() {
      numeroEjercicios = numeroEjercicios < 5 ? numeroEjercicios +1 : 0;
    });
    
    // Lógica para incrementar numero de ejericios
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            StyledBodyText('Dificultad: '),
            for ( int i=0;  i<dificultad; i++)
               Image.asset('assets/img/snake.png',
                  width: 25,
                  color:Color.fromARGB(255, 133, 223, 240),
                  colorBlendMode: BlendMode.multiply,),

            Expanded (child:SizedBox()),
            StyledButton(
              onPressed: incrementarDificultad,
              child: const Text('+'),   
            )        
          ],
        
        ),

        Row(
          children: [
            StyledBodyText('Ejercicios: '),
            if (numeroEjercicios == 0)
              const Text('Sin ejercicios'),

            for (int i=0; i<numeroEjercicios; i++)
              Image.asset('assets/img/snake.png',
                  width: 25,
                  color:Color.fromARGB(255, 133, 223, 240),
                  colorBlendMode: BlendMode.multiply,),
            Expanded (child:SizedBox()),
            StyledButton(
              onPressed: incrementarEjercicios,
              child: const Text('+'),   
            )  
            
          ],
        ),
      ],
    );
  }
}
