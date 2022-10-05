import 'package:flutter/material.dart';

import '../../main.dart';

class newBlog extends StatefulWidget {
  const newBlog({super.key});

  @override
  State<newBlog> createState() => _newBlogState();
}

class _newBlogState extends State<newBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff005fae),
        centerTitle: true,
        title: Text("Crear un nuevo blog"),
        actions: <Widget>[
            IconButton(
                icon: Icon(Icons.logout_rounded),
                // Funcion para que aparezca el alertDialog con la confirmación de cerrar sesion
                onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Cerrar sesión'),
                        content: const Text(
                            '¿Estas seguro que quieres cerrar sesión?'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Cancelar'),
                            onPressed: () => Navigator.pop(context, 'Cancelar'),
                          ),
                          TextButton(
                            child: const Text('Salir'),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login())),
                          ),
                        ],
                      ),
                    )),
          ],
      ),
      body:  Center(
        child: Text("Nuevo blog"),
      )
    );
  }
}