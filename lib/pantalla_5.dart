import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Importamos Material para el ElevatedButton (opcional)

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() =>
      _PantallaCincoState(); // Corrección del nombre del estado
}

class _PantallaCincoState extends State<PantallaCinco> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              // Usamos CupertinoPageScaffold para tener la barra superior
              navigationBar: CupertinoNavigationBar(
                middle: Text(index == 0 ? 'Home' : 'Settings'),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      index == 0
                          ? CupertinoIcons.home
                          : CupertinoIcons.settings,
                      size: 100.0,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      // Opcional: si quieres un botón de regreso con estilo Material
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Regresar!'),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
