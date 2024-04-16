import 'package:calc/calc.dart';

void main(List<String> arguments) {

  Operacoes operacoes = Operacoes();

  double operacao, resultado = 0;
  List<double> numeros = [0, 0];

  String operacaoInstrucao = "Digite um numero de acordo com a operacao necessaria\n[0] - Soma\n[1] - Subtração\n[2] - Multiplicação\n[3] - Divisão\n";
  String operacaoLerPrimeiro = "Digite o primeiro numero: ";
  String operacaoLerSegundo = "Digite o segundo numero: ";
  String operacaoSair = "Digite [0] para sair (1 para continuar calculando)";
  
  while(true) {
    try {
      operacao = operacoes.LerInput(operacaoInstrucao);
      numeros[0] = operacoes.LerInput(operacaoLerPrimeiro);
      numeros[1] = operacoes.LerInput(operacaoLerSegundo);

      resultado = operacoes.Calcular(operacao, numeros[0], numeros[1]);

      print("\n\nO resultado da operação tipo [$operacao] é = [$resultado]");

      if (operacoes.LerInput(operacaoSair) == 0) {
        break;
      }
    } catch (e) {
      print("\n\nERRO na execucao, codigo: $e");
    }
  }

}
