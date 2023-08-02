import 'package:flutter/material.dart';

class PaginaStateless extends StatelessWidget {
  final String textoRecibido;
  const PaginaStateless(this.textoRecibido, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateless page")),
      body: Center(
        child: Text(textoRecibido),
      ),
    );
  }
}
