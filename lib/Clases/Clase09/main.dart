import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatefulWidget {
  @override
  State<MiApp> createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  List<Persona> personas = [
    Persona("Javier", "Jamaica", "+34 722386214"),
    Persona("Luisa", "Perez", "+34 5323432"),
    Persona("Nicolas", "Dominguez", "+34 23454323"),
    Persona("Pepa", "Pig", "+34 775332432"),
    Persona("Lara", "Croft", "+34 34562354")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material App Bar"),
        ),
        body: ListView.builder(
            itemCount: personas.length,
            itemBuilder: (context, index) {
              return ListTile(
                onLongPress: () {
                  this.borrarPersona(context, personas[index]);
                },
                title: Text(
                    personas[index].nombre + " " + personas[index].apellido),
                subtitle: Text(personas[index].telefono),
                leading: CircleAvatar(
                    child: Text(personas[index].nombre.substring(0, 1))),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            }),
      ),
    );
  }

  borrarPersona(context, Persona persona) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("Eliminar contacto?"),
              content: Text(
                  "Esta seguro de querer eliminar a: " + persona.nombre + "?"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancelar")),
                ElevatedButton(
                    onPressed: () {
                      print(persona.nombre);
                      this.setState(() {
                        this.personas.remove(persona);
                      });
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Borrar",
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            ));
  }
}

class Persona {
  late String nombre;
  late String apellido;
  late String telefono;
  Persona(String nombre, String apellido, String telefono) {
    this.nombre = nombre;
    this.apellido = apellido;
    this.telefono = telefono;
  }
}
