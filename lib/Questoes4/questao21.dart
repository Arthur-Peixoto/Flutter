import 'dart:io';

void main() {
  stdout.write("Digite uma palavra: ");
  String palavra = stdin.readLineSync()!.toLowerCase();
  Map<String, int> contagemLetras = contarLetras(palavra);
  print("\nResultado:");
  contagemLetras.forEach((letra, quantidade) {
    print("$letra = $quantidade");
  });
}

Map<String, int> contarLetras(String palavra) {
  Map<String, int> contagem = {};

  for (int i = 0; i < palavra.length; i++) {
    String letra = palavra[i];
    if (contagem.containsKey(letra)) {
      contagem[letra] = contagem[letra]! + 1;
    } else {
      contagem[letra] = 1;
    }
  }

  return contagem;
}
