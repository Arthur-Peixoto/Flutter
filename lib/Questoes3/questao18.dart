import 'dart:io';

void main() {
  print("Digite uma frase:");
  String frase = stdin.readLineSync()!;
  String fraseInvertida = inverterFrase(frase);
  print("Frase invertida: $fraseInvertida");
}

String inverterFrase(String frase) {
  List<String> palavras = frase.split(" ");
  List<String> palavrasInvertidas = [];
  for (int i = palavras.length - 1; i >= 0; i--) {
    palavrasInvertidas.add(palavras[i]);
  }
  return palavrasInvertidas.join(" ");
}