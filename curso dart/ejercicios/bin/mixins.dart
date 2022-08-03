

// el abstract en este caso nos permite que no se creen instancias de estas

void main(List<String> args) {
  final pato = new Paloma();
  pato.volar();
}

abstract class Animal {

}

abstract class Mamiferos extends Animal {

}

abstract class Ave extends Animal{

}

abstract class Peces extends Animal{

}

abstract class Volador {
  void volar() => print('yo vuelo');
}

abstract class Caminante {
  void caminar() => print('yo camino');
}

abstract class Nadador {
  void nadar() => print('yo nado');
  
}

class Delfin extends Mamiferos with Nadador {}

class Murcielago extends Mamiferos with Caminante , Volador{}

class Paloma extends Ave with Caminante, Volador, Nadador{}
