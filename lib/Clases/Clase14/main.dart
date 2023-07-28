import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MiApp());

class MiApp extends StatefulWidget {
  @override
  State<MiApp> createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  int valor = 0;
  cambiarValor() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      valor++;
      pref.setInt("valor", valor);
    });
  }

  @override
  void initState() {
    super.initState();
    cargarPreferencias();
  }

  cargarPreferencias() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      valor = pref.getInt("valor") ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Preferencias",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Preferencias"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                valor.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: cambiarValor, child: Text("Aumentar valor"))
          ],
        )),
      ),
    );
  }
}
