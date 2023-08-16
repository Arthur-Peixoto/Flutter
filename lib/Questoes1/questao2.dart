import 'dart:math';
import 'dart:io';

void main(){
  print("Qual raio do seu círculo ");
  double raio = double.parse( stdin.readLineSync()!);
  double area = raio * pow(pi,2);
  print(area);
}