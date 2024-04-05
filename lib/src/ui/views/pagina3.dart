import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Pagina3 extends StatefulWidget {
  const Pagina3({Key? key}) : super(key: key);

  @override
  State<Pagina3> createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3> {
  List<dynamic> _data = [];

  // Método para realizar la solicitud HTTP a la API
  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      setState(() {
        _data = json.decode(response.body);
      });
    } else {
      print('Error en la solicitud: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 3 - Ejemplo de conexión a API'),
      ),
      body: _data.isEmpty
          ? Center(
              child: ElevatedButton(
                onPressed: () {
                  fetchData();
                },
                child: const Text('Cargar datos desde la API'),
              ),
            )
          : ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_data[index]['title'] ?? ''),
                  subtitle: Text(_data[index]['body'] ?? ''),
                );
              },
            ),
    );
  }
}
