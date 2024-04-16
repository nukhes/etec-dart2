import 'dart:io';

int lerInput(String texto) {
  print("\n$texto");
  return int.parse(stdin.readLineSync().toString().trim());
}
String identificarSigno(int dia, int mes) {
  List<String> signos = [
    'Áries',
    'Touro',
    'Gêmeos',
    'Câncer',
    'Leão',
    'Virgem',
    'Libra',
    'Escorpião',
    'Sagitário',
    'Capricórnio',
    'Aquário',
    'Peixes'
  ];

  switch(mes) {
    case 1: // jan
      return dia <= 20 ? signos[9] : signos[10];
    case 2: // fev
      return dia <= 18 ? signos[10] : signos[11];
    case 3: // março
      return dia <= 20 ? signos[11] : signos[0];
    case 4: // abril
      return dia <= 20 ? signos[0] : signos[1];
    case 5: // maio
      return dia <= 20 ? signos[1] : signos[2];
    case 6: // junho
      return dia <= 20 ? signos[2] : signos[3];
    case 7: // julho
      return dia <= 20 ? signos[3] : signos[4];
    case 8: // agosto
      return dia <= 20 ? signos[4] : signos[5];
    case 9: // set
      return dia <= 20 ? signos[5] : signos[6];
    case 10: // out
      return dia <= 20 ? signos[6] : signos[7];
    case 11: // nov
      return dia <= 20 ? signos[7] : signos[8];
    case 12: // dezembreo
      return dia <= 20 ? signos[8] : signos[9];
    default:
      throw ArgumentError("Data Invalida!");
  }
}


void main(List<String> arguments) {

  int dia, mes;
  String signo;

  dia = lerInput('Digite o dia em que voce nasceu: ');
  mes = lerInput('Digite o mes em que voce nasceu: ');

  signo = identificarSigno(dia, mes);

  print("\nSeu signo é: $signo.");

}
