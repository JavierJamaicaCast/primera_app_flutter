import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:primera_app_fluttrer/Clases/Clase10_API_Rest_Future/Modelos/Gif.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MiApp());

class MiApp extends StatefulWidget {
  @override
  State<MiApp> createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  late Future<List<Gif>> listadoGifs;

  Future<List<Gif>> getGifs() async {
    final respuesta = await http.get(Uri.parse(
        "https://api.giphy.com/v1/gifs/trending?api_key=YJHDEM0TBrDCihd0D3VOdw5mlhg7XWoj&limit=10&offset=0&rating=g&bundle=messaging_non_clips"));
    List<Gif> gifs = [];

    if (respuesta.statusCode == 200) {
      String cuerpo = utf8.decode(respuesta.bodyBytes);

      final datosJson = jsonDecode(cuerpo);

      for (var itemJson in datosJson["data"]) {
        gifs.add(Gif(itemJson["title"],
            itemJson["images"]["fixed_height_downsampled"]["url"]));
      }
    } else {
      throw Exception("Error de conexion: " + respuesta.statusCode.toString());
    }
    return gifs;
  }

  @override
  void initState() {
    listadoGifs = getGifs();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material App Bar"),
        ),
        body: FutureBuilder(
          future: listadoGifs,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.count(
                crossAxisCount: 2,
                children: listGifs(snapshot.data),
              );
            } else {
              snapshot.hasError;
              print(snapshot.error);
              return Text("Error");
            }
          },
        ),
      ),
    );
  }

  List<Widget> listGifs(List<Gif>? data) {
    List<Widget> gifs = [];
    for (var itemData in data!) {
      gifs.add(Card(
          child: Column(
        children: [
          Expanded(
            child: Image.network(
              itemData.url,
              fit: BoxFit.fill,
            ),
          ),
        ],
      )));
    }
    return gifs;
  }
}
