import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cambio de icono"),
        ),
        body: Center(
            child: Container(
          child: Text("Hello World"),
        )),
      ),
    );
  }
}
