import 'package:flutter/material.dart';
import 'package:primera_app_fluttrer/Clases/Clase19_TextFormField/widgets/formulario_pago.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Pago con tarjeta"),
          ),
          body: const FormCard()),
    );
  }
}
