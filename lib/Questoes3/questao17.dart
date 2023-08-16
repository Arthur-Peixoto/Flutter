import 'dart:io';

void main() {
  final int tamanho = lerTamanho();
  final List<int> vetor = lerVetor(tamanho);
  final int maiorNumero = encontrarMaiorNumero(vetor);
  final int menorNumero = encontrarMenorNumero(vetor);
  print("\nVetor: ${vetor.join(', ')}");
  print("Maior número: $maiorNumero");
  print("Menor número: $menorNumero");
}

int lerTamanho() {
  stdout.write("Informe o tamanho do vetor: ");
  return int.parse(stdin.readLineSync()!);
}

List<int> lerVetor(int tamanho) {
  final List<int> vetor = [];
  for (int i = 0; i < tamanho; i++) {
    stdout.write("Informe o elemento [$i]: ");
    final int elemento = int.parse(stdin.readLineSync()!);
    vetor.add(elemento);
  }
  return vetor;
}

int encontrarMaiorNumero(List<int> vetor) {
  int maior = vetor[0];
  for (int i = 1; i < vetor.length; i++) {
    if (vetor[i] > maior) {
      maior = vetor[i];
    }
  }
  return maior;
}

int encontrarMenorNumero(List<int> vetor) {
  int menor = vetor[0];
  for (int i = 1; i < vetor.length; i++) {
    if (vetor[i] < menor) {
      menor = vetor[i];
    }
  }
  return menor;
}