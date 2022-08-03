import 'package:ejercicios/ejercicios.dart' as ejercicios;

void main() {
  final wolwerine = new Heroe(poder: 'regeneracion', nombre: 'logan'); /** final: significa que el valor de la variable no va a xambiar (Es como si fuera una constante)) */
  final juan = new Heroe(poder: 'programar', nombre: 'juan');
  print(wolwerine);
  print(juan);
}

class Heroe {

  var nombre;
  var poder;

  /**
   * Heroe({ var nombre = 'sin nombre', var poder = 'sin poder' }){
   * this.nombre = nombre;
   * this.poder = poder;
   * }
   */

  Heroe({this.nombre, this.poder}); 
  String toString(){
    return '${this.nombre } - ${this.poder}';
  }
}
