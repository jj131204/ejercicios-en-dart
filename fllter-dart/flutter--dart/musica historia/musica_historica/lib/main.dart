import 'package:flutter/material.dart';
import 'package:musica_historica/home.dart';

void main() {
  runApp(const login());
}

final user = "juan";
final password = "hola1234";

final myControllerUser = TextEditingController();

final myControllerPassw = TextEditingController();

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
        backgroundColor: Color(0xff005fae),
        centerTitle: true,
        title: Text("BIevenido a musica historica"),
      ),
      body: Container(
        child: Center(
          child: newSesion(context),
        ),
      ),
    );
  }
}

newSesion(context) {
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
    boton(context),
  ])));
}

Widget nombre() {
  return Text("Iniciar sesión",
      style: TextStyle(
          color: Color(0xff005fae), fontSize: 40.0, fontFamily: 'Times New Roman'));
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

Widget boton(context) {
  return ElevatedButton(
    
      child: Text("Botton"),
      onPressed: () async {
        if (user == myControllerUser.text && password == myControllerPassw.text)
              {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => musicaHitorica()));
                  print(myControllerUser);
              }
              else{
                print("incorrecto");
                print(myControllerUser);
              }
    }

          );
}
