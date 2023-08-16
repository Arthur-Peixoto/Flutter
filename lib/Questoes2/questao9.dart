import 'dart:io';

void main() {
  print("Digite um número (1 a 9): ");
  int n = int.parse(stdin.readLineSync()!);

  print("Tabuada do $n:");
  for (int i = 1; i <= 10; i++) {
    int resultado = n * i;
    print("$n x $i = $resultado");
  }
}