bool saoAnagramas(String s1, String s2) {
  if (s1.length != s2.length) {
    return false;
  }

  List<int> contagemCaracteres = List<int>.filled(26, 0);

  for (int i = 0; i < s1.length; i++) {
    contagemCaracteres[s1.codeUnitAt(i) - 'A'.codeUnitAt(0)]++;
    contagemCaracteres[s2.codeUnitAt(i) - 'A'.codeUnitAt(0)]--;
  }

  return contagemCaracteres.every((count) => count == 0);
}

void main() {
  print(saoAnagramas("PATO", "PATP"));
  print(saoAnagramas("PATO", "OPTA"));
  print(saoAnagramas("TOPA", "OPTA"));
  print(saoAnagramas("ABCDE", "EDCBA"));
  print(saoAnagramas("AABB", "ABBB"));
}