class NodoHuffman {
  final String caractere;
  final int frequencia;
  NodoHuffman? esquerda;
  NodoHuffman? direita;

  NodoHuffman(this.caractere, this.frequencia);
}

class Huffman {
  Map<String, String> codificacao = {};
  NodoHuffman? raiz;

  void construirArvore(String texto) {
    Map<String, int> frequencias = {};
    for (int i = 0; i < texto.length; i++) {
      String caractere = texto[i];
      frequencias[caractere] = (frequencias[caractere] ?? 0) + 1;
    }

    List<NodoHuffman> nodos = [];
    frequencias.forEach((caractere, frequencia) {
      nodos.add(NodoHuffman(caractere, frequencia));
    });

    while (nodos.length > 1) {
      nodos.sort((a, b) => a.frequencia - b.frequencia);
      NodoHuffman novoNodo = NodoHuffman('', nodos[0].frequencia + nodos[1].frequencia);
      novoNodo.esquerda = nodos.removeAt(0);
      novoNodo.direita = nodos.removeAt(0);
      nodos.add(novoNodo);
    }

    raiz = nodos.first;
  }

  void gerarCodificacao(NodoHuffman? nodo, String codigo) {
    if (nodo == null) {
      return;
    }
    if (nodo.caractere.isNotEmpty) {
      codificacao[nodo.caractere] = codigo;
    }
    gerarCodificacao(nodo.esquerda, codigo + '0');
    gerarCodificacao(nodo.direita, codigo + '1');
  }

  String codificar(String texto) {
    String codificado = '';
    for (int i = 0; i < texto.length; i++) {
      codificado += codificacao[texto[i]]!;
    }
    return codificado;
  }
}

void main() {
  Huffman codificador = Huffman();

  String entrada = "ABRACADABRA";
  codificador.construirArvore(entrada);
  codificador.gerarCodificacao(codificador.raiz, '');
  String saida = codificador.codificar(entrada);

  print("Entrada: $entrada");
  print("Saída: $saida");
}
