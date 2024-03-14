import 'dart:io';

// 01
verificarPositivo(numero) {
  return (numero >= 0) ? "positivo" : "negativo";
}

// 02
cadastrarAluno() {
  print("\n\n=== CADASTRO DE ALUNO - DART ===\n");
  print("Digite o nome do aluno: ");
  String nomeAluno = stdin.readLineSync().toString().toUpperCase().trim();
  print("Digite o sexo do aluno: ");
  String sexoAluno = stdin.readLineSync().toString().toUpperCase().trim();
  print("Digite a matricula do aluno: ");
  String matriculaAluno = stdin.readLineSync().toString().toUpperCase().trim();

  return Aluno(nomeAluno, sexoAluno, matriculaAluno);
}
class Aluno {
  String nome, sexo, matricula;
  double media = 0;
  Aluno(this.nome, this.sexo, this.matricula);

  calcularMedia() {
    List<double> notas = [0, 0, 0];
    double mediaLocal = 0;

    print("\n\nVamos calcular a média de $nome!\n");

    for (int i = 0; i < 3; i++) {
      print("Digite uma nota: ");
      notas[i] = double.parse(stdin.readLineSync().toString());
      mediaLocal+=notas[i];
    }
    media = mediaLocal/3;
  }

  resultadoMedia() {
    String res = (media >= 6) ? "APROVADO" : "REPROVADO";
    print("\n\nA média do aluno $nome é de $media\nSTATUS: $res");
  }
}

// 03
lerInputPrintResultado() {

  retornarMenor(n1, n2) {
    return (n2 < n1) ? n2.toString() : ((n1 == n2) ? "iguais" : n1.toString());
  }
  int n1, n2;

  print("Digite um numero: ");
  n1 = int.parse(stdin.readLineSync().toString());
  print("Digite um outro numero: ");
  n2 = int.parse(stdin.readLineSync().toString());

  print("o menor dos numeros digitado e: " + retornarMenor(n1, n2));
}

// 04
verificarSenha() {
  print("\n\ndigite sua senha: ");
  String senha = stdin.readLineSync().toString().trim();
  return (senha == "ASDFG") ? print("\n\nACESSO PERMITIDO\n\n") : print("\n\nACESSO NEGADO\n\n");
}

// 05
dadosPessoa(String nome, String sexo, int idade) {
  String statusIdade = (idade >= 21) ? "MAIOR DE IDADE" : "MENOR DE IDADE";
  print("\n\nCADASTRO DE PESSOA\n nome:   $nome\n sexo:   $sexo\n idade:  $idade ($statusIdade)");
}