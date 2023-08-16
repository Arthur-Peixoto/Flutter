import 'dart:io';

void main() {
  List<int> vetorOriginal = lerVetor();
  List<int> vetorInverso = criarVetorInverso(vetorOriginal);

  print("\nVetor Original: $vetorOriginal");
  print("Vetor Inverso: $vetorInverso");
}

List<int> lerVetor() {
  stdout.write("Informe o tamanho do vetor: ");
  int tamanho = int.parse(stdin.readLineSync()!);

  List<int> vetor = [];

  for (int i = 0; i < tamanho; i++) {
    stdout.write("Informe o elemento [$i]: ");
    int elemento = int.parse(stdin.readLineSync()!);
    vetor.add(elemento);
  }

  return vetor;
}

List<int> criarVetorInverso(List<int> vetorOriginal) {
  List<int> vetorInverso = List.from(vetorOriginal.reversed);
  return vetorInverso;
}