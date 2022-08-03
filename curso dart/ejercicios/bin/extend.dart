
void main(List<String> args) {
  
  final superman = new Heroe();
  superman.nombre = 'clark kent';

  final luthor = new Villano();

  luthor.nombre = 'lex luthor';

}


// los extend nos permiten 
abstract class  Personaje{
  var nombre;
  var poder;
}


class Heroe  extends Personaje{
  // var nombre;
  // var poder;
   var  valentia;
}

class Villano extends Personaje{
  //var nombre;
  //var poder;
  var maldad;
}