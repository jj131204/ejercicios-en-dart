import 'package:flutter/material.dart';
import 'package:musica_historica/pages/myBlogs.dart';
import 'package:musica_historica/pages/notices.dart';
import 'package:musica_historica/pages/publicBLogs.dart';

class musicaHitorica extends StatelessWidget {
  const musicaHitorica({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Musica historica",
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _pageActual = 1;

  List<Widget> _paginas = [notices(), myBLogs(), publicBLogs()];

  List<Widget> _titulos = [
    Text("Container animado"),
    Text("Users"),
    Text("Favoritos")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff005fae),
        centerTitle: true,
        title: Text("Musica historica"),
      ),
      body: _paginas[_pageActual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageActual,

        // Sirve para subrayar el icono seleccionado
        // index = a la posicion que este seleccionada en los items del bottonNavigatorBar.

        fixedColor: Color(0xff005fae),

        onTap: (index) {
          setState(() {
            _pageActual = index;
          });
        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_rounded), label: "Noticias"
              //'test', styles: TextStyle(fontSize: 30.067),
              ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize_rounded),
            label: "Mis blogs",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public_rounded),
            label: "blogs publicos",
          ),
        ],
      ),
    );
  }
}
