import 'dart:io';

void main() {
  print("Calculadora de Rendimento de Investimento em Poupança\n");

  print("Informe o valor do investimento inicial:");
  double investimentoInicial = double.parse(stdin.readLineSync()!);
  print("Informe o valor do investimento mensal:");
  double investimentoMensal = double.parse(stdin.readLineSync()!);
  print("Informe a quantidade de meses:");
  int quantidadeMeses = int.parse(stdin.readLineSync()!);
  print("Informe a taxa de juros mensal (em %):");
  double taxaJuros = double.parse(stdin.readLineSync()!) / 100.0;
  double saldoAcumulado = investimentoInicial;
  for (int i = 0; i < quantidadeMeses; i++) {
    double rendimentoMensal = (saldoAcumulado + investimentoMensal) * taxaJuros;
    saldoAcumulado = saldoAcumulado + investimentoMensal + rendimentoMensal;
  }

  print("\nApós $quantidadeMeses meses, o saldo acumulado será: R\$ ${saldoAcumulado.toStringAsFixed(2)}");
}