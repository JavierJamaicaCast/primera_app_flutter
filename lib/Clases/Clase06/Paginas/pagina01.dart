import 'package:flutter/material.dart';

class pagina02 extends StatelessWidget {
  const pagina02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Row(
                  children: <Widget>[
                    Text("Acepto todo"),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}