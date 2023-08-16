import 'dart:io';

void main() {
  print("Calculadora de Fatorial com Recursividade\n");

  stdout.write("Informe um número inteiro positivo: ");
  int numero = int.parse(stdin.readLineSync()!);

  int fatorial = calcularFatorial(numero);
  print("$numero! = $fatorial");
}

int calcularFatorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calcularFatorial(n - 1);
  }
}
