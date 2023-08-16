import 'dart:io';

void main(){
  print("insira o valor do inicio do intervalo");
  double inicio = double.parse(stdin.readLineSync()!);
  print("insira o valor final do intervalo");
  double fim = double.parse(stdin.readLineSync()!);
  double x = inicio;
  while(x <= fim){
      print(x);
      x++;
  }
  double y = inicio;
  do{
    print(y);
    y++;
  }while(y <= fim);
  for(double z = inicio; z <= fim; z++){
    print(z);
  }
}