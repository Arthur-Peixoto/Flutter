import 'dart:io';

class CRUD<T> {
  List<T> items = [];

  void create(T item) {
    items.add(item);
    print("Item adicionado com sucesso!");
  }

  void read() {
    if (items.isEmpty) {
      print("Não há itens para exibir.");
      return;
    }

    print("Itens:");
    for (var item in items) {
      print(item);
    }
  }

  void update(int index, T newItem) {
    if (index >= 0 && index < items.length) {
      items[index] = newItem;
      print("Item atualizado com sucesso!");
    } else {
      print("Índice inválido.");
    }
  }

  void delete(int index) {
    if (index >= 0 && index < items.length) {
      items.removeAt(index);
      print("Item removido com sucesso!");
    } else {
      print("Índice inválido.");
    }
  }
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  @override
  String toString() {
    return "Nome: $nome, Idade: $idade";
  }
}

void main() {
  var integerCRUD = CRUD<int>();
  var pessoaCRUD = CRUD<Pessoa>();

  while (true) {
    print("\nMenu:");
    print("1 - Criar Item");
    print("2 - Exibir Itens");
    print("3 - Atualizar Item");
    print("4 - Remover Item");
    print("0 - Sair");

    stdout.write("Escolha uma opção: ");
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        stdout.write("Digite um valor (para Integer) ou nome (para Pessoa): ");
        var input = stdin.readLineSync()!;
        if (input.toLowerCase() == "pessoa") {
          stdout.write("Nome: ");
          String nome = stdin.readLineSync()!;
          stdout.write("Idade: ");
          int idade = int.parse(stdin.readLineSync()!);
          var pessoa = Pessoa(nome, idade);
          pessoaCRUD.create(pessoa);
        } else {
          int valor = int.parse(input);
          integerCRUD.create(valor);
        }
        break;

      case 2:
        print("Itens de Integer:");
        integerCRUD.read();
        print("\nItens de Pessoa:");
        pessoaCRUD.read();
        break;

      case 3:
        stdout.write("Digite o índice do item a ser atualizado: ");
        int index = int.parse(stdin.readLineSync()!);
        if (index >= 0 && index < integerCRUD.items.length) {
          print("Digite o novo valor (para Integer) ou nome (para Pessoa): ");
          var input = stdin.readLineSync()!;
          if (input.toLowerCase() == "pessoa") {
            stdout.write("Nome: ");
            String nome = stdin.readLineSync()!;
            stdout.write("Idade: ");
            int idade = int.parse(stdin.readLineSync()!);
            var pessoa = Pessoa(nome, idade);
            pessoaCRUD.update(index, pessoa);
          } else {
            int valor = int.parse(input);
            integerCRUD.update(index, valor);
          }
        } else {
          print("Índice inválido.");
        }
        break;

      case 4:
        stdout.write("Digite o índice do item a ser removido: ");
        int index = int.parse(stdin.readLineSync()!);
        integerCRUD.delete(index);
        pessoaCRUD.delete(index);
        break;

      case 0:
        print("Saindo do programa.");
        return;

      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}