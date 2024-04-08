
import 'package:aplicacion_basica_curso/src/data/remote/movie.dart';
import 'package:aplicacion_basica_curso/src/data/remote/movies.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TheMovieDBService {
  final String API_url = 'https://api.themoviedb.org/3';
  final String API_key = '1eaa2da538ee011defaf03a05766a1e4';

  Future<List<Movie>> getTopRatedMovies() async {
    var url = API_url + '/movie/top_rated?api_key=' + API_key + '&languages=es';
    final respuesta = await http.get(Uri.parse(url));

    if(respuesta.statusCode == 200){
      final respuestaJSON = json.decode(respuesta.body);
      final peliculasMejorValoradas = Movies.fromJsonList(respuestaJSON['result']);
      
      return peliculasMejorValoradas;

    }
    return <Movie>[];
  }
}


//  https://api.themoviedb.org/3
//  /movie/top_rated?api_key=
//  1eaa2da538ee011defaf03a05766a1e4
//  &languages=es

