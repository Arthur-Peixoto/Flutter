import 'dart:io';
import 'dart:math';

void main() {
  bool sair = false;

  while (!sair) {
    stdout.write("Escolha uma opção: ");
    print("1 - Potenciação");
    print("2 - Raiz Quadrada");
    print("3 - Fatorial");
    print("0 - Sair");

    int opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        calcularPotenciacao();
        break;
      case 2:
        calcularRaizQuadrada();
        break;
      case 3:
        calcularFatorial();
        break;
      case 0:
        sair = true;
        break;
      default:
        break;
    }
  }
}

void calcularPotenciacao() {
  stdout.write("Informe a base: ");
  double base = double.parse(stdin.readLineSync()!);

  stdout.write("Informe o expoente: ");
  double expoente = double.parse(stdin.readLineSync()!);

  num resultado = pow(base, expoente);
  print("Resultado: $resultado");
}

void calcularRaizQuadrada() {
  stdout.write("Informe o número para calcular a raiz quadrada: ");
  double numero = double.parse(stdin.readLineSync()!);

  double resultado = sqrt(numero);
  print("Raiz Quadrada: $resultado");
}

void calcularFatorial() {
  stdout.write("Informe um número inteiro positivo: ");
  int numero = int.parse(stdin.readLineSync()!);

  int fatorial = 1;
  for (int i = 1; i <= numero; i++) {
    fatorial *= i;
  }
  print("Fatorial de $numero: $fatorial");
}