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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App")),
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://e0.pxfuel.com/wallpapers/23/714/desktop-wallpaper-fondo-minimalista-bosque-noche-minimalismo.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          campoUsuario(),
          campoContraseya(),
          SizedBox(
            height: 10,
          ),
          botonEntrar()
        ],
      ),
    ),
  );
}

Widget nombre() {
  return Text(
    "Iniciar sesion",
    style: TextStyle(
        color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
        decoration: InputDecoration(
            hintText: "Usuario", fillColor: Colors.white, filled: true)),
  );
}

Widget campoContraseya() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password", fillColor: Colors.white, filled: true)),
  );
}

Widget botonEntrar() {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, backgroundColor: Colors.blue),
      onPressed: () {},
      child: Text(
        "Acceder",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ));
}
