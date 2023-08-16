import 'dart:io';

class Pessoa {
  late String nome;
  late double peso;
  late double altura;
  late double imc;

  Pessoa(this.nome, this.peso, this.altura) {
    calcularIMC();
  }

  void calcularIMC() {
    imc = peso / (altura * altura);
  }

  @override
  String toString() {
    return 'Nome: $nome, Peso: $peso kg, Altura: $altura m, IMC: $imc';
  }
}

void main() {
  stdout.write("Informe a quantidade de pessoas: ");
  int quantidade = int.parse(stdin.readLineSync()!);

  List<Pessoa> pessoas = [];

  for (int i = 0; i < quantidade; i++) {
    print("\nCadastro da Pessoa ${i + 1}");
    Pessoa pessoa = cadastrarPessoa();
    pessoas.add(pessoa);
  }

  print("\nLista de Pessoas Cadastradas:");
  for (var pessoa in pessoas) {
    print(pessoa);
  }
}

Pessoa cadastrarPessoa() {
  stdout.write("Nome: ");
  String nome = stdin.readLineSync()!;

  stdout.write("Peso (kg): ");
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write("Altura (m): ");
  double altura = double.parse(stdin.readLineSync()!);

  return Pessoa(nome, peso, altura);
}