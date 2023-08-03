import 'package:flutter/material.dart';
import 'package:primera_app_fluttrer/Clases/Clase21_Sistema_Rutas/pages/index.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  final routes = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/otra': (context) => OtraPagina(),
    '/servicios': (context) => ServiciosPage(),
    '/error404': (context) => ErrorPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material app',
      initialRoute: '/',
      routes: routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => ErrorPage(),
        );
      },
    );
  }
}
