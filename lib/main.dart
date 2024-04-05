
import 'package:aplicacion_basica_curso/src/config/routes.dart';
import 'package:flutter/material.dart';

import 'src/config/import.dart';


void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}
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