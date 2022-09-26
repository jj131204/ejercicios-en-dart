import 'dart:js';

import 'package:flutter/material.dart';
import 'package:musica_historica/home.dart';

void main() {
  runApp(const login());
}

final user = "juan";
final password = "hola1234";

final myControllerUser = TextEditingController();

final myControllerPassw = TextEditingController();

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Musica historica",
      debugShowCheckedModeBanner: false,
      home: loginUser(),
    );
  }
}

class loginUser extends StatefulWidget {
  const loginUser({super.key});

  @override
  State<loginUser> createState() => _loginUserState();
}

class _loginUserState extends State<loginUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BIevenido a musica historica"),
      ),
      body: Container(
        child: Center(
          child: newSesion(),
        ),
      ),
    );
  }
}

newSesion() {
  return Container(
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    nombre(),
    SizedBox(
      height: 10.0,
    ),
    campoUsuario(),
    SizedBox(
      height: 10.0,
    ),
    campoContrasena(),
    // espacio
    SizedBox(
      height: 15.0,
    ),
    //boton()]),
    boton(),
  ])));
}

Widget nombre() {
  return Text("Iniciar sesión",
      style: TextStyle(
          color: Colors.blue, fontSize: 40.0, fontFamily: 'Times New Roman'));
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7),
    child: TextField(
      controller: myControllerUser,
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7.0),
    child: TextField(
      controller: myControllerPassw,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget boton() {
  return ElevatedButton(
    onPressed: () {
      if (user == myControllerUser.text && password == myControllerPassw.text) {
        print("hola mundo");
      }
    },
    child: Text(
      "continuar",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}
