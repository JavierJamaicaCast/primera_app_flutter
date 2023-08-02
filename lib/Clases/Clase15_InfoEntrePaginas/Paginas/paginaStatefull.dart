import 'package:flutter/material.dart';

class PaginaStatefull extends StatefulWidget {
  final String textoRecibido;
  const PaginaStatefull(this.textoRecibido, {Key? key}) : super(key: key);

  @override
  State<PaginaStatefull> createState() => _PaginaStatefullState();
}

class _PaginaStatefullState extends State<PaginaStatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Statefull page")),
      body: Center(
        child: Text(widget.textoRecibido),
      ),
    );
  }
}
