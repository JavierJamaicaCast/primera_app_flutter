import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error 404'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5 * 5),
        child: const Center(
          child: Text(
            'PAGINA NO ENCONTRADA ERROR 404',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
