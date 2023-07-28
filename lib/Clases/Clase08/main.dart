import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi app",
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
  Empresa _facebook = new Empresa("Facebook", "Mark Zuckerberg", 10000);
  Empresa _google = new Empresa("Google", "Larry Page", 500000);
  @override
  void initState() {
    super.initState();
    print(_facebook);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_google.nombreEmpresa)),
      body: Center(
        child: Text(
          _facebook.nombreEmpresa,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Empresa {
  late String nombreEmpresa;
  late String propietario;
  late int ingresoAnual;

  Empresa(String nombreEmpresa, String propietario, int ingresoAnual) {
    this.nombreEmpresa = nombreEmpresa;
    this.propietario = propietario;
    this.ingresoAnual = ingresoAnual;
  }
}
