import 'dart:io';
import 'dart:math';

void main(){
  print("Qual valor de A?");
  double a = double.parse( stdin.readLineSync()!);
  print("Qual valor de B?");
  double b = double.parse( stdin.readLineSync()!);
  print("Qual valor de C?");
  double c = double.parse( stdin.readLineSync()!);
  double delta = funcDelta(a,b,c);
  raizes(delta,a,b,c);
}

void raizes(double delta, double a, double b, double c){
  delta = sqrt(delta);
  print(delta);
  double raiz1 = (-b + delta)/2*a;
  print(raiz1);
  double raiz2 = (-b - delta)/2*a;
  print(raiz2);
}

double funcDelta(double a, double b, double c){
  double delta = (pow(b,2) - 4*a*c);
  return delta;
}
