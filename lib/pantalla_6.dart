import 'package:flutter/material.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Seis'),
      ),
      body: DraggableScrollableSheet(
        initialChildSize: 0.5, // Puedes ajustar el tamaño inicial
        minChildSize: 0.25, // Puedes ajustar el tamaño mínimo
        maxChildSize: 1.0, // Puedes ajustar el tamaño máximo
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.orangeAccent,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text('Item $index'),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Regresar!'),
                ),
                const SizedBox(
                    height: 20), // Un poco de espacio después del botón
              ],
            ),
          );
        },
      ),
    );
  }
}
