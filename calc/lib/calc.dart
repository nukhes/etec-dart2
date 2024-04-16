import 'dart:io';

class Operacoes {
  double Calcular(operacao, n1, n2) {
    switch(operacao) {
      case 0: // soma
        return n1+n2;
      case 1: // sub
        return n1-n2;
      case 2: // multi
        return n1*n2;
      case 3: // div
        return n1/n2;
      default:
        throw ArgumentError("A operação selecionada não existe");
    }
  }
  double LerInput(String texto) {
    print("\n$texto");
    return double.parse(stdin.readLineSync().toString().trim());
  }
}