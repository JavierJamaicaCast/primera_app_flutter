import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatefulWidget {
  @override
  State<MiApp> createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  double ancho = 100.0;
  double alto = 100.0;
  Color color = Colors.blue;
  BorderRadius borderRadius = BorderRadius.circular(10.0);

  void cambiarContainer() {
    final random = Random();

    ancho = random.nextInt(350).toDouble();
    alto = random.nextInt(350).toDouble();
    color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    borderRadius = BorderRadius.circular(random.nextInt(30).toDouble());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("AnimatedContainer App Bar"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                  child: AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                duration: Duration(milliseconds: 500),
                width: ancho,
                height: alto,
                decoration:
                    BoxDecoration(color: color, borderRadius: borderRadius),
              )),
            ),
            ElevatedButton(
                onPressed: cambiarContainer, child: Text("Cambiar contenedor"))
          ],
        ),
      ),
    );
  }
}
