import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Filas, Columnas y Botones",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  bool suscrito = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Navegacion")),
        body: Center(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10)),
                      onPressed: () {
                        mostrarAlerta(context);
                      },
                      child: Text(
                        "Suscribirme a este canal",
                        style: TextStyle(fontSize: 20),
                      )),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    suscrito ? "Suscrito" : "No suscrito",
                    style: TextStyle(fontSize: 20),
                  )
                ]),
          ),
        ));
  }

  void mostrarAlerta(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => AlertDialog(
              title: Text(suscrito ? "Quitar suscripcion" : "Suscripcion"),
              content: Text(
                  suscrito ? "Cancelar suscripcion?" : "Desea suscribirse?"),
              actions: [
                TextButton(
                  onPressed: () {
                    print("No");

                    Navigator.pop(context);
                  },
                  child: Text("Cancelar"),
                ),
                TextButton(
                    onPressed: () {
                      print("Si quiero");
                      setState(() {
                        suscrito = !suscrito;
                      });
                      Navigator.pop(context);
                    },
                    child: Text("Si quiero"))
              ],
            ));
  }
}
