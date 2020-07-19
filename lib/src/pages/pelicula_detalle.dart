import 'package:flutter/material.dart';
import 'package:peliculas/src/models/pelicula_model.dart';

class PeliculaDetalle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Pelicula pelicula=ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title:Text(pelicula.title),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('Hello world'),
      ),
    );
  }
}
