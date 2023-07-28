import 'package:flutter/material.dart';
import 'package:primera_app_fluttrer/Clases/Clase15/Paginas/paginaStatefull.dart';
import 'package:primera_app_fluttrer/Clases/Clase15/Paginas/paginaStateless.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController textoController = TextEditingController(text: "");
    return Scaffold(
      appBar: AppBar(
        title: Text("Material App Bar"),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: textoController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Ingresa informacion"),
              )),
          OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PaginaStateless(textoController.text)));
              },
              child: Text("Enviar a Stateless")),
          OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PaginaStatefull(textoController.text)));
              },
              child: Text("Enviar a StateFull"))
        ],
      ),
    );
  }
}
