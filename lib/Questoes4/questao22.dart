import 'dart:io';

void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!.toLowerCase();
  Map<String, int> contagemPalavras = contarPalavras(frase);
  print("\nResultado:");
  contagemPalavras.forEach((palavra, quantidade) {
    print("$palavra=$quantidade");
  });
}

Map<String, int> contarPalavras(String frase) {
  Map<String, int> contagem = {};
  List<String> palavras = frase.split(" ");
  for (String palavra in palavras) {
    if (contagem.containsKey(palavra)) {
      contagem[palavra] = contagem[palavra]! + 1;
    } else {
      contagem[palavra] = 1;
    }
  }

  return contagem;
}
