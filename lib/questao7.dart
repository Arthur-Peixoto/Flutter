import 'dart:io';

void main(){
  print("insira o valor do inicio do intervalo");
  double inicio = double.parse(stdin.readLineSync()!);
  print("insira o valor final do intervalo");
  double fim = double.parse(stdin.readLineSync()!);
  double x = inicio;
  while(x <= fim){
    if(x%2 != 0) print(x);
    x++;
  }
  double y = inicio;
  do{
    if(y%2 != 0) print(y);
    y++;
  }while(y <= fim);
  for(double z = inicio; z <= fim; z++){
    if(z%2 != 0) print(z);
  }
}