import 'dart:io';

void main() {
  print("Calculadora de Somatório\n");
  print("Informe o número inicial do intervalo:");
  int inicio = int.parse(stdin.readLineSync()!);
  print("Informe o número final do intervalo:");
  int fim = int.parse(stdin.readLineSync()!);
  int somatorio = calcularSomatorio(inicio, fim);
  print("O somatório dos números no intervalo é: $somatorio");
}

int calcularSomatorio(int inicio, int fim) {
  int somatorio = 0;
  for (int i = inicio; i <= fim; i++) {
    somatorio += i;
  }
  return somatorio;
}