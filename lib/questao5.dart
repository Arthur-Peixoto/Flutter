import 'dart:io';

void main() {
  print("Digite um número: ");
  double num = double.parse(stdin.readLineSync()!);
  if (num > 0 && num < 5) print("Está no intervalo entre 1 e 5");
  else if(num > 5) print("Está fora do intervalo ");
}