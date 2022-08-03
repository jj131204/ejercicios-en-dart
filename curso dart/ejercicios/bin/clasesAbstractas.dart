


void main() {
  final perro = new Perro(); 
  final gato = new Gato();
  
  perro.sonido();
  gato.sonido();
}

// Las clases abstractar me permiten obligar a otras clases a que se cumplan las condiciones de esta.
// Se usan para forzar a que todas las clases necesarias esten declaradas de la misma manera
abstract class Animal{
  
  var patas;
  void sonido();
}

class Perro implements Animal{

  var patas;

  void sonido() => print('guauu guau');
}

class Gato implements Animal{

  var patas;

  void sonido() => print('miauu miau');
}