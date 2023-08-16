import 'dart:io';

void main() {
  print("Calculadora de Somatório de Intervalo com Recursividade\n");

  stdout.write("Informe o número inicial do intervalo: ");
  int inicio = int.parse(stdin.readLineSync()!);

  stdout.write("Informe o número final do intervalo: ");
  int fim = int.parse(stdin.readLineSync()!);

  int somatorio = calcularSomatorioIntervalo(inicio, fim);
  print("Somatório dos números no intervalo [$inicio, $fim]: $somatorio");
}

int calcularSomatorioIntervalo(int inicio, int fim) {
  if (inicio > fim) {
    return 0;
  } else {
    return inicio + calcularSomatorioIntervalo(inicio + 1, fim);
  }
}