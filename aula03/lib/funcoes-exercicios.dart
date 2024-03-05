import 'dart:convert';
import 'dart:io';

double AreaTriangulo(double altura, double base) {
  return (base*altura)/2;
}

int IdadeParaDias(String anos) {

  int anosInt = int.parse(anos);

  return anosInt * 12 * 30;
}

double MediaDeTres(double m1, double m2, double m3) {
  return (m1*2 + m2*3 + m3*5) / 10;
}

double VolumeCaixa(x,y,z) {
  return x*y*z;
}

int QuadradoDeTres(int A, int B, int C) {
  return (A*A)+(B*B)+(C*C);
}
 