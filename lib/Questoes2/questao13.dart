import 'dart:io';

void main() {
  print("Calculadora de Fatorial\n");
  print("Informe um número inteiro positivo:");
  int numero = int.parse(stdin.readLineSync()!);
  int fatorial = calcularFatorial(numero);
  print("$numero! = $fatorial");
}

int calcularFatorial(int n) {
  int fatorial = 1;
  for (int i = 1; i <= n; i++) {
    fatorial *= i;
  }
  return fatorial;
}
