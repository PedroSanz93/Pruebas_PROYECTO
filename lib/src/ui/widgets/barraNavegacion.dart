import 'package:aplicacion_basica_curso/src/config/import.dart';
import 'package:aplicacion_basica_curso/src/ui/widgets/global/barraLateral.dart';
import 'package:flutter/material.dart';

class barraNavegacion extends StatelessWidget {
  const barraNavegacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 29, 202, 130),
          title: const Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
                ),
              ),
            bottom: const TabBar(
              tabs: [
              Tab(
                icon: Icon(
                  Icons.directions_car,
                  color: Colors.white,),
              ),
              Tab(
                icon: Icon(
                  Icons.verified_user,
                  color: Colors.white,),
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bike,
                  color: Colors.white,),
              )
            ],
          ),
        ),
      drawer: const BarraLateral(),
      body: const TabBarView(
            children: [
              Pagina1(),
              Text("Contenido de la pagina 2"),
              Text("Contenido de la pagina 3")
          ],
        ),
      
    );
  }
}