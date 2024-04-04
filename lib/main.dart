
import 'package:aplicacion_basica_curso/src/config/routes.dart';
import 'package:flutter/material.dart';

import 'src/config/import.dart';


void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}
/*
// ESTO TIENE QUE IR METIDO EN LAS RUTAS
final _routes = {
          '/':(context)=> const LoginScreen(),
          '/home':(context) => const HomeScreen(), 
          '/pagina1':(context) => const Pagina1(),
          '/pagina2':(context) => const Pagina2(),
          '/pagina3':(context) => const Pagina3(),
};
*/
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: Routes.routes,
      onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (context) => const Screen404()
          );
      },
    );
  }
}