import 'dart:convert';

void main() {
  //final wolverine = new Heroe('logan', 'regeneracion');
  final rawJson = '{ "nombre": "logan", "poder":"regeneracion"}';

  Map parsedJson = json.decode( rawJson);

  final wolverine = new Heroe.fromJson(parsedJson);  // se pude pasar simplemente el rawJson y dentro del construxtor con nombre se hace el parceado

  //print(parsedJson);

  print(wolverine.nombre);
  print(wolverine.poder);
}


class Heroe { 

  var nombre;
  var poder;

  //constructor
  Heroe(this.nombre, this.poder); 

  // constructor con nombre
  Heroe.fromJson( Map parsedJson ){ 
    nombre = parsedJson['nombre'];
    poder = parsedJson['poder'];
  }
}