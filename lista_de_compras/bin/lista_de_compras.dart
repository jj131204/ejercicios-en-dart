import 'package:lista_de_compras/lista_de_compras.dart' as lista_de_compras;
import 'dart:io';

var list = [];

/**
 * Funcion que agrega un nuevo producto a la lista
 */
void addList(){

    print('¿Que producto deseas agregar?');
    String? addList = stdin.readLineSync();

    list.add(addList);
    
    print(list);
  }

/**
 * funcion inicial
 */
void main(List<String> args) {
  print('¿Quieres crear un lista?');
  String? a = stdin.readLineSync();
  
  if (a == "si"){
    
      addList();
      print('¿Deseas agregar otro producto?');
      String? newProduct = stdin.readLineSync();
      if (newProduct == 'si'){
        addList();
      }
      else if (newProduct == 'no'){
        print('la lista de productos es  $list');
      }
      
    }
  else if (a == "no"){
    print("");
  }
  /*else{
    print ('ingrese si o no');
    print('¿Quieres crear un lista?');
    String? a = stdin.readLineSync();
  }*/
}
