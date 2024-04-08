
import 'package:aplicacion_basica_curso/src/ui/views/homeScreen.dart';
import 'package:aplicacion_basica_curso/src/ui/views/imagenesScreen.dart';
import 'package:aplicacion_basica_curso/src/ui/views/settingScreen.dart';
import 'package:aplicacion_basica_curso/src/ui/views/userScreen.dart';
import 'package:flutter/material.dart';

class BarraLateral extends StatelessWidget {
  const BarraLateral({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 29, 202, 130),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(top: 50, bottom: 20),
              child: const Icon(Icons.person),
            ),
            const Text(
              "Opciones",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: const Color.fromARGB(137, 157, 253, 225),
                child: const Text("Inicio"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserScreen()), 
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: const Color.fromARGB(137, 157, 253, 225),
                child: const Text("Usuario"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImagenesScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: const Color.fromARGB(137, 157, 253, 225),
                child: const Text("Imagenes"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: const Color.fromARGB(137, 157, 253, 225),
                child: const Text("Configuracion"),
              ),
            ),
            Expanded(child: Container()
            ),
            GestureDetector(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: const Color.fromARGB(136, 2, 109, 77),
                alignment: Alignment.center,
                child: const Text("Exit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}