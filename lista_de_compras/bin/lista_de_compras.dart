import 'package:lista_de_compras/lista_de_compras.dart' as lista_de_compras;
import 'dart:io';

var list = [];

/**
 * Funcion que agrega un nuevo producto a la lista
 */
void addList(valor) {
  var test = valor;
  while (test == 'si') {
    print('¿Que producto deseas agregar?');
    String? addList = stdin.readLineSync();

    list.add(addList);

    print('¿Deseas agregar otro producto?');
    String? newProduct = stdin.readLineSync();

    if (newProduct == 'no') {
      test = 'no';
      print('la lista de productos es: $list');
    } else if (newProduct != 'si') {
      print('ingresa un valor  valido (Si o No)');
      print('¿Deseas agregar otro producto?');
      String? newProduct = stdin.readLineSync();
    
      if (newProduct == 'no') {
        test = 'no';
        print('la lista de productos es: $list');
      }
      
    }
  }
}

/**
 * funcion inicial
 */
void main(List<String> args) {
  print('¿Quieres crear un lista?');
  String? a = stdin.readLineSync();

  if (a == "si") {
    addList(a);

  } else if (a == "no") {
    print("bye");
  }
}
