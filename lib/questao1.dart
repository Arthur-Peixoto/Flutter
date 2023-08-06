import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  print("Qual seu peso ");
  double peso = double.parse( stdin.readLineSync()! );
  print("Qual seu altura ");
  double altura = double.parse( stdin.readLineSync()! );
  if(altura == 0){
    print("altura não pode ser 0");
  }else{
  double imc = peso / (altura*altura);
  print(imc);
  }
}