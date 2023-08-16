bool validarParenteses(String str) {
  List<String> pilha = [];

  for (int i = 0; i < str.length; i++) {
    String caractere = str[i];

    if (caractere == "(") {
      pilha.add(caractere);
    } else if (caractere == ")") {
      if (pilha.isEmpty || pilha.last != "(") {
        return false;
      }
      pilha.removeLast();
    }
  }

  return pilha.isEmpty;
}

void main() {
  print(validarParenteses("()"));
  print(validarParenteses("()()"));
  print(validarParenteses("(a)b"));
  print(validarParenteses("(a)(b)"));
  print(validarParenteses("(("));
  print(validarParenteses("(a)(b"));
  print(validarParenteses(")("));
  print(validarParenteses(")a()b("));
}
