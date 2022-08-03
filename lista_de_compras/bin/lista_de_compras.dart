import 'package:lista_de_compras/lista_de_compras.dart' as lista_de_compras;
import 'dart:io';

var list = [];

/**
 * Editar una lista
 */

void listEdit() {


  print('¿deseas editar(1), elminiar(2) o agregar(3) un campo de la lista?');
  String? options = stdin.readLineSync();

  int options1 = int.parse(options!);

  if (options1 == 1) {

    print('¿Que Campo de la lista deseas editar (1,2,3,4....)?');
    String? campoList = stdin.readLineSync();
    int campoList1 = int.parse(campoList!);

    

    if(list.length + 1 < campoList1){
      print('ingresa un numero valido');
      changueList();
    }
    else{
      int position = campoList1 - 1;
    print('¿Por cual producto quieres cambiar?');
    String? newProduct = stdin.readLineSync();

      list[position] = newProduct;
      print(' Su nueva lista de compras quedo de la siguiente manera: $list');
      changueList();
    }

  } else if (options1 == 2) {

    print('¿Que Campo de la lista deseas eliminar (1,2,3,4....)?');
    String? campoList = stdin.readLineSync();
    int campoList1 = int.parse(campoList!);

    if(list.length + 1 < campoList1){
      print('ingresa un numero valido');
      changueList();
    }
    else{
      int position = campoList1 - 1;
      //list.remove(position);
      list.removeAt(position);
      print(' Su nueva lista de compras quedo de la siguiente manera: $list');
      changueList();
    }

  } else if (options1 == 3) {
    print('¿Que producto deseas agregar?');
    String? addList = stdin.readLineSync();

    list.add(addList);
    print(' Su nueva lista de compras quedo de la siguiente manera: $list');
    changueList();
  } else {
    print('ingrese un valor valido');
    listEdit();
  }
}


// Editar los campos de la lista.
void changueList(){
      print('¿Deseas editar tu lista de compras?');
      String? editList = stdin.readLineSync();

      if (editList == 'si') {
        listEdit();
      } else if (editList == 'no') {
        print('Esta es su lista de compra: $list');
        print('bye');

      } else {
        print('Ingrese un valor valido (si o no)');
        changueList();
      }
}

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

      // Editar la lista de compras
      changueList();

    } else if (newProduct != 'si') {
      print('ingresa un valor  valido (Si o No)');
      
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
