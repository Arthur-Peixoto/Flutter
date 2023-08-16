import 'dart:io';

void main() {
  stdout.write("Informe o número de linhas da matriz: ");
  int linhas = int.parse(stdin.readLineSync()!);

  stdout.write("Informe o número de colunas da matriz: ");
  int colunas = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = criarMatriz(linhas, colunas);
  preencherMatriz(matriz);

  print("\nMatriz informada:");
  exibirMatriz(matriz);
}

List<List<int>> criarMatriz(int linhas, int colunas) {
  return List.generate(linhas, (i) => List<int>.filled(colunas, 0, growable: false));
}

void preencherMatriz(List<List<int>> matriz) {
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      stdout.write("Informe o elemento da posição [$i][$j]: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }
}

void exibirMatriz(List<List<int>> matriz) {
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      stdout.write("${matriz[i][j]} ");
    }
    print("");
  }
}