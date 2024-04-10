// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:io';

import 'package:exercicios_16_4_24/exercicios_16_4_24.dart' as ex;

void exercicio04() {
  print("\n\nEXERCICIO 04\n\n");

  print("digite o valor do produto: ");
  var valorProduto = double.parse(stdin.readLineSync().toString());
  print("digite o codigo do produto: ");
  var codProduto = double.parse(stdin.readLineSync().toString());

  var res = ex.aplicarDesconto(valorProduto, codProduto);
  print("\ndesconto:        RS" +res[2] +
        "\nvalor final:     RS" +res[0] +
        "\ncodigo produto:  RS" +res[1]);
}

void exercicio05() {
  print("\n\nEXERCICIO 05\n\n");

  print("DIGITE SUA SENHA: ");
  var senha = stdin.readLineSync().toString().trim();

  if (ex.verificarSenha(senha)) {

    print("DIGITE O VALOR DO SAQUE: ");
    var saque = double.parse(stdin.readLineSync().toString().trim());

    var res = ex.verificarSaque(saque);

    if (res != false) {
      print("\nsaldo final:     RS" + res[0] +
            "\nvalor do saque:  RS" + res[1] +
            "\nimposto:         RS" + res[2]);
    } else {
      print("SALDO INSUFICIENTE");
    }
  } else {
    print("SENHA INVALIDA!");
  }
}

void exercicio06() {
  pegarMedia() {
    var conceito;
    var mediaFinal;
    var n = [0.0,0.0,0.0,0.0];

    for (var i = 0; i < 3; i++) {
      print("Digite a nota: ");
      n[i] = double.parse(stdin.readLineSync().toString().toUpperCase().trim());
    }
    print("Digite a nota do exercicio: ");
    n[3] = double.parse(stdin.readLineSync().toString().toUpperCase().trim());

    mediaFinal = (n[0] + (n[1]*2) + (n[2]*3) + n[3])/7;

    if (mediaFinal >= 9) {
      conceito = 'A';
    } else if (mediaFinal < 9 || mediaFinal >= 7.5) {
      conceito = 'B';
    } else if (mediaFinal < 7.5 || mediaFinal >= 6) {
      conceito = 'C';
    } else {
      conceito = 'D';
    }

    print("A nota final é: [$conceito]");
  }
  pegarMedia();
}

void main(List<String> arguments) {
  exercicio04();
  exercicio05();
  exercicio06();
}
