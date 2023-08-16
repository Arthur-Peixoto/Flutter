import 'dart:io';

void main() {
  print("Contador de Palavras e Arquivo CSV\n");
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!.toLowerCase();
  Map<String, int> contagemPalavras = contarPalavras(frase);
  salvarResultadosCSV(contagemPalavras);
  Map<String, int> resultadosCarregados = carregarResultadosCSV();
  print("\nResultados carregados do arquivo CSV:");
  resultadosCarregados.forEach((palavra, quantidade) {
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

void salvarResultadosCSV(Map<String, int> resultados) {
  final file = File('resultados.csv');
  var csvContent = 'Palavra,Quantidade\n';
  resultados.forEach((palavra, quantidade) {
    csvContent += '$palavra,$quantidade\n';
  });
  file.writeAsStringSync(csvContent);
  print("\nResultados salvos no arquivo CSV.");
}

Map<String, int> carregarResultadosCSV() {
  final file = File('resultados.csv');
  final resultados = <String, int>{};

  if (file.existsSync()) {
    final lines = file.readAsLinesSync();
    for (var line in lines.skip(1)) {
      final parts = line.split(",");
      if (parts.length == 2) {
        resultados[parts[0]] = int.parse(parts[1]);
      }
    }
  }

  return resultados;
}