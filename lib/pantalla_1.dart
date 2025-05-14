import 'package:flutter/material.dart';

//! AnimatedOpacity

class PantallaUno extends StatefulWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  State<PantallaUno> createState() =>
      _PantallaUnoState(); // Corrección del nombre del estado
}

class _PantallaUnoState extends State<PantallaUno> {
  // Corrección del nombre del estado
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Agregamos el Scaffold
      appBar: AppBar(
        // Agregamos el AppBar
        title: const Text('Pantalla Uno'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 50,
              ),
            ),
            ElevatedButton(
              child: const Text('Fade Logo'),
              onPressed: () {
                setState(
                  () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                );
              },
            ),
            const SizedBox(
              // Reemplacé el Center innecesario con SizedBox
              height: 20,
            ),
            ElevatedButton(
              // Saqué el ElevatedButton del Center innecesario
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
            const SizedBox(
              height: 20, // Añadí un poco de espacio al final
            ),
          ],
        ),
      ),
    );
  }
}
