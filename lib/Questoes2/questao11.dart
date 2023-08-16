import 'dart:io';

void main() {
  print("Informe um número inteiro positivo:");
  int numero = int.parse(stdin.readLineSync()!);
  bool ehPrimo = ehNumeroPrimo(numero);
  if (ehPrimo) {
    print("$numero é um número primo.");
  } else {
    print("$numero não é um número primo.");
  }
}

bool ehNumeroPrimo(int n) {
  if (n <= 1) return false;
  if (n == 2) return true;

  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}