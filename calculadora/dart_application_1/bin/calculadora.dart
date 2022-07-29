void main(List<String> args) {
  var firstNumber = double.parse(args[0]);

  var operator = args[1];
  var secondNumber = double.parse(args[2]);

  if (operator == "+") {
    var result = firstNumber + secondNumber;
    print("el resultado de la suma es $result");

  }
  else if (operator == "-") {
    var result = firstNumber - secondNumber;
    print("el resultado de la resta es $result");
    
  }
  else if (operator == "x") {
    var result = firstNumber * secondNumber;
    print("el resultado de la multiplicación es $result");

  }
    
   else if (operator == ":") {
    var result = firstNumber / secondNumber;

    print("el resultado de la division es $result");

  } else {
    print("ingrese un signo valido");
  }
}
