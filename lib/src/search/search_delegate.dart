import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate{
  String seleccion='';
  final peliculas=[
    'Obedece a la morsa',
    'Spiderman: Home Coming',
    'Cenicienta',
    'Toy Story 4',
    'El recluso',
    'Steve Jobs'
  ];


  final peliculasRecientes=[
    'Spiderman',
    'Capitan America'
  ];



  @override
  List<Widget> buildActions(BuildContext context) {
    //Acciones del appbar
    return [
      IconButton(
      icon: Icon(Icons.clear),
      onPressed: () {
        query='';
      },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //Icono a la izquierda del appbar (search)
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //Builder (Crear los resultados a mostrar)
    return Container(
      height: 100.0,
      width: 100.0,
      color: Colors.yellowAccent,
      child:Text(seleccion)
    );
  }





  @override
  Widget buildSuggestions(BuildContext context) {
    //Sugerencias que aparecen al escribir



    final listaSugerida=(query.isEmpty)
                      ?peliculasRecientes
                      :peliculas.where((element) => element.toLowerCase().startsWith(query)).toList();
    return ListView.builder(
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.movie),
            title: Text(listaSugerida[i]),
            onTap: () {
              seleccion=listaSugerida[i];
              showResults(context);
            },

          );
        },
      itemCount: listaSugerida.length,
    );
  }


}