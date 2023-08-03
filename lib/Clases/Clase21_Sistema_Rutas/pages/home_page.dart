import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home page")),
      body: Container(
        width: double.infinity,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/otra");
                  },
                  child: const Text('Ir a otra')),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/servicios");
                  },
                  child: const Text('Ir a servicios')),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/edqwdqw");
                  },
                  child: const Text('Ir a configuraciones')),
            ],
          ),
        ),
      ),
    );
  }
}
