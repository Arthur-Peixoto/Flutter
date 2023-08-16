// import 'dart:io';
// import 'dart:convert';
//
// class Pessoa {
//   late String nome;
//   late double peso;
//   late double altura;
//   late double imc;
//
//   Pessoa(this.nome, this.peso, this.altura) {
//     calcularIMC();
//   }
//
//   void calcularIMC() {
//     imc = peso / (altura * altura);
//   }
//
//   @override
//   String toString() {
//     return 'Nome: $nome, Peso: $peso kg, Altura: $altura m, IMC: $imc';
//   }
// }
//
// void main() {
//   stdout.write("Informe a quantidade de pessoas: ");
//   int quantidade = int.parse(stdin.readLineSync()!);
//
//   List<Pessoa> pessoas = [];
//
//   for (int i = 0; i < quantidade; i++) {
//     print("\nCadastro da Pessoa ${i + 1}");
//     Pessoa pessoa = cadastrarPessoa();
//     pessoas.add(pessoa);
//   }
//   salvarDados(pessoas);
//   List pessoasCarregadas = carregarDados();
//   print("\nLista de Pessoas Cadastradas:");
//   for (var pessoa in pessoasCarregadas) {
//     print(pessoa);
//   }
// }
//
// Pessoa cadastrarPessoa() {
//   stdout.write("Nome: ");
//   String nome = stdin.readLineSync()!;
//
//   stdout.write("Peso (kg): ");
//   double peso = double.parse(stdin.readLineSync()!);
//
//   stdout.write("Altura (m): ");
//   double altura = double.parse(stdin.readLineSync()!);
//
//   return Pessoa(nome, peso, altura);
// }
//
// void salvarDados(List<Pessoa> pessoas) {
//   final file = File('dados.bin');
//   var encodedData = jsonEncode(pessoas.map((pessoa) => pessoa.toJson()).toList());
//   file.writeAsBytesSync(utf8.encode(encodedData));
// }
//
// List carregarDados() {
//   final file = File('dados.bin');
//   if (file.existsSync()) {
//     final data = file.readAsBytesSync();
//     final jsonData = jsonDecode(utf8.decode(data)) as List<dynamic>;
//     return jsonData.map((item) => Pessoa.fromJson(item)).toList();
//   }
//   return [];
// }