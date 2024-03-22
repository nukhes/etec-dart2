import 'dart:io';

// 01
verificarPositivo(numero) {
  return (numero >= 0) ? "positivo" : "negativo";
}

// 02 (DENTRO DA CLASSE ALUNO TEMOS O 06)
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

  // FUNCAO DO 06
  calcularMediaPlus() {
    List<double> notas = [0, 0, 0, 0];
    double mediaLocal = 0;

    print("\n\nVamos calcular a média de $nome usando 04 notas!\n");

    for (int i = 0; i < 4; i++) {
      print("Digite uma nota: ");
      notas[i] = double.parse(stdin.readLineSync().toString());
      mediaLocal+=notas[i];
    }

    mediaLocal = mediaLocal/4;

    if (mediaLocal >= 7) {
      print("\nAPROVADO com média: $mediaLocal\n");
      return;
    } else {
      print("\nDigite a nota do examew\n");
      double notaExame = double.parse(stdin.readLineSync().toString());
      double mediaExame = (notaExame + mediaLocal)/2;
      (mediaExame >= 5) ? print("\nAprovado com Exame, média $mediaExame") : print("\nReprovado, média $mediaExame");
    }
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

  print("o menor dos numeros digitado e: ${retornarMenor(n1, n2)}");
}

// 04
verificarSenha() {
  print("\n\ndigite sua senha: ");
  String senha = stdin.readLineSync().toString().trim();
  return (senha == "ASDFG") ? print("\n\nACESSO PERMITIDO\n\n") : print("\n\nACESSO NEGADO\n\n");
}

// 05
dadosPessoa() {
  print("\n\n=== CADASTRO DE PESSOA - DART ===\n");
  print("Digite o nome: ");
  String nome = stdin.readLineSync().toString().toUpperCase().trim();
  print("Digite o sexo: ");
  String sexo = stdin.readLineSync().toString().toUpperCase().trim();
  print("Digite a idade: ");
  double idade = double.parse(stdin.readLineSync().toString().trim());
  String statusIdade = (idade >= 21) ? "MAIOR DE IDADE" : "MENOR DE IDADE";
  print("\n\nCADASTRO DE PESSOA\n nome:   $nome\n sexo:   $sexo\n idade:  $idade ($statusIdade)");
}

// 06 - DENTRO DA CLASSE DO 02
// 07
ParaNegativo() {
  print("\nDigite um numero");
  double numero = double.parse(stdin.readLineSync().toString());
  if (numero > 0) {
    numero = numero * -1;
  }
  print("Convertido para negativo: $numero");
}

// 08
Funcionario() {
  print("\ndigite o salario de um funcionario: ");
  double salario = double.parse(stdin.readLineSync().toString());
  if (salario >= 9900) {
    print("grande funcao");
  } else if ( salario >= 5000) {
    print("media funcao");
  } else {
    print("pequena funcao");
  }
}

// 09
FuncionarioReajuste() {
  print("\ndigite o salario de um funcionario: ");
  double salario = double.parse(stdin.readLineSync().toString());
  print("Selecione a funcao de acordo com o indice:\n01 - tecnico\n02 - engenheiro\n03 - outros");
  int func = int.parse(stdin.readLineSync().toString());

  switch (func) {
    case 1:
      salario+=salario*0.5;
      break;
    case 2:
      salario+=salario*0.3;
      break;
    case 3:
      salario+=salario*0.1;
      break;
  }
  print("Salario reajustado: $salario");
}