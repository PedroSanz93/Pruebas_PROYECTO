import 'package:aplicacion_basica_curso/src/data/remote/services/movies_Services.dart';
import 'package:aplicacion_basica_curso/src/ui/widgets/cajaPelicula.dart';
import 'package:aplicacion_basica_curso/src/ui/widgets/spinnerWidget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "API Movie",
      home: MovieDBPage(
        
      ),);
  }
}

class MovieDBPage extends StatelessWidget {
  final TheMovieDBService _movieService = TheMovieDBService();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: FutureBuilder(
        future: _movieService.getTopRatedMovies(),
        builder: 
        (BuildContext context,
          AsyncSnapshot<List> snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index){
                  var pelicula = snapshot.data![index];
                  return CajaPelicula(peli: pelicula);
                  },
                );
            } else {
              return SpinnerWidget();
            }
          }
      )
    );
  }

}
