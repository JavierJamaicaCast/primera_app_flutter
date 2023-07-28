import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi app",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App")),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
                "https://img.freepik.com/foto-gratis/cachorros-beagle-tricolor-estan-planteando-lindos-perritos-o-mascotas-color-blanco-braun-negro-jugando-pared-gris-mire-atento-jugueton-concepto-movimiento-movimiento-accion-espacio-negativo_155003-33651.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
                "https://www.petdarling.com/wp-content/uploads/2021/01/cachorros.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
                "https://petslife.com.mx/wp-content/uploads/2020/11/perritos.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
                "https://www.dogalize.com/wp-content/uploads/2017/06/La-sverminazione-e-la-pulizia-del-cucciolo-del-cane-2-800x400-800x400.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
                "https://www.bicaalu.com/wp-content/uploads/videos_de_perritos_y_gatitos_en_internet.jpg"),
          )
        ],
      ),
    );
  }
}
