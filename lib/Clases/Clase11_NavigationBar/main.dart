import 'package:flutter/material.dart';
import 'Paginas/PaginaHome.dart';
import 'Paginas/PaginaUsers.dart';

void main() => runApp(MiApp());

class MiApp extends StatefulWidget {
  @override
  State<MiApp> createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  int paginaActual = 0;

  List<Widget> paginas = [PaginaHome(), PaginaUsers()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Material App Bar"),
          ),
          body: paginas[paginaActual],
          bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  paginaActual = index;
                });
              },
              currentIndex: paginaActual,
              items: [
                BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: "Users", icon: Icon(Icons.supervised_user_circle))
              ])),
    );
  }
}
