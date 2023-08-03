import 'package:flutter/material.dart';

class ServiciosPage extends StatefulWidget {
  @override
  State<ServiciosPage> createState() => _ServiciosPageState();
}

class _ServiciosPageState extends State<ServiciosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicios page'),
      ),
      body: Center(
        child: Text('Otra page de servicios prra'),
      ),
    );
  }
}
