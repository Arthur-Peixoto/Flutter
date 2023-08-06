import 'dart:math';
import 'dart:io';

void main(){
  print("Qual sua nota da sua primeira unidade?");
  double nota1 = double.parse( stdin.readLineSync()!);
  print("Qual sua nota da sua segunda unidade?");
  double nota2 = double.parse( stdin.readLineSync()!);
  print("Qual sua nota da sua terceira unidade?");
  double nota3 = double.parse( stdin.readLineSync()!);
  double notaF = (nota1 + nota2 + nota3)/10;
  if(notaF >= 7){
    print("Aprovado");
  }
  else {
    double notaNecessaria = ((notaF*6) - 50)/-10;
    print("recuperação precisando de " + notaNecessaria.toString());
  }
}