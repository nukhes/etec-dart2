import '../lib/exercicios_12_03_24.dart';

void main() {
  print("EXERCICIOS EM DART");
  print("\n\n- 01");
  print("O numéro 04 é: " + verificarPositivo(4));

  print("\n\n- 02");
  var AlunoTeste = cadastrarAluno();
  AlunoTeste.calcularMedia();
  AlunoTeste.resultadoMedia();

  print("\n\n- 03");
  lerInputPrintResultado();

  print("\n\n- 04");
  verificarSenha();

  print("\n\n- 05");
  dadosPessoa();

  print("\n\n- 06");
  var Aluno = cadastrarAluno();
  Aluno.calcularMediaPlus();

  print("\n\n- 07");
  ParaNegativo();

  print("\n\n- 08");
  Funcionario();

  print("\n\n- 09");
  FuncionarioReajuste();

}
