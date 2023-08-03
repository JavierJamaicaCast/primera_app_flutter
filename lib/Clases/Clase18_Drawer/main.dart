import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.blueGrey,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Image.network(
                      "https://img.freepik.com/fotos-premium/anime-kawaii-chica-generativa-ai_259696-1902.jpg"),
                ),
                const Text(
                  'Javier Jamaica',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(20),
                  color: Colors.grey[100],
                  width: double.infinity,
                  child: const Text("Inicio"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 3),
                  padding: const EdgeInsets.all(20),
                  color: Colors.grey[100],
                  width: double.infinity,
                  child: const Text("Configuracion"),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(top: 3, bottom: 5),
                  padding: const EdgeInsets.all(20),
                  color: Colors.red[100],
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: const Text("Salir"),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Drawer App Bar"),
        ),
        body: Center(
            child: Container(
          child: Text("Hello World"),
        )),
      ),
    );
  }
}
