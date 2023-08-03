import 'package:flutter/material.dart';

class OtraPagina extends StatefulWidget {
  @override
  State<OtraPagina> createState() => _OtraPaginaState();
}

class _OtraPaginaState extends State<OtraPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Otra Page'),
      ),
      body: Center(
        child: Text('Otra page prra'),
      ),
    );
  }
}
