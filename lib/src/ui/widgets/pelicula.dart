import 'package:aplicacion_basica_curso/src/config/import.dart';
import 'package:aplicacion_basica_curso/src/data/remote/movie.dart';
import 'package:flutter/material.dart';

class Pelicula extends StatelessWidget{

  Movie movie;

  Pelicula ({super.key, required this.movie});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          Image.network(this.movie.getImage()),
          Text(this.movie.overview)
        ],
      ), 
    );
  }
}