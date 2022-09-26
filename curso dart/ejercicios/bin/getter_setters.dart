

void main() {
  final cuadrado = new Cuadrado();

  cuadrado.lado = 10;

  print(cuadrado);

  print ('area = ${ cuadrado.area}');
}

class Cuadrado {
  var _lado;
  var _area;  //  el _ significa qeue es una variable cerrado es decir  que solo existe en esta clase.

  set lado( double valor){
    if (valor <= 0){
      throw('el lado no puede ser < o = a 0'); //como una especie de alert
    }

    _lado = valor;
  }

  /*double get area { //sin parentecis ()
    return _lado * _lado;
  }*/

  double get area => _lado * _lado;  // forma corta

  toString() => 'Lado: $_lado';
}