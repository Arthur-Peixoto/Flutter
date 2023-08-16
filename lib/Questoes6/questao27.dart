class Pilha<T> {
  List<T> _itens = [];

  void push(T item) {
    _itens.add(item);
  }

  T pop() {
    if (_itens.isNotEmpty) {
      return _itens.removeLast();
    } else {
      throw Exception("A pilha está vazia.");
    }
  }

  T peek() {
    if (_itens.isNotEmpty) {
      return _itens.last;
    } else {
      throw Exception("A pilha está vazia.");
    }
  }

  bool isEmpty() {
    return _itens.isEmpty;
  }

  int length() {
    return _itens.length;
  }

  @override
  String toString() {
    return _itens.toString();
  }
}

void main() {
  Pilha<int> pilhaInt = Pilha<int>();
  Pilha<String> pilhaString = Pilha<String>();

  pilhaInt.push(10);
  pilhaInt.push(20);
  pilhaInt.push(30);

  pilhaString.push("Primeiro");
  pilhaString.push("Segundo");
  pilhaString.push("Terceiro");

  print("Pilha de Inteiros: ${pilhaInt.toString()}");
  print("Pilha de Strings: ${pilhaString.toString()}");

  pilhaInt.pop();
  pilhaString.pop();

  print("Pilha de Inteiros após o pop: ${pilhaInt.toString()}");
  print("Pilha de Strings após o pop: ${pilhaString.toString()}");

  print("Elemento no topo da pilha de Inteiros: ${pilhaInt.peek()}");
  print("Elemento no topo da pilha de Strings: ${pilhaString.peek()}");

  print("A pilha de Inteiros está vazia? ${pilhaInt.isEmpty()}");
  print("A pilha de Strings está vazia? ${pilhaString.isEmpty()}");

  print("Tamanho da pilha de Inteiros: ${pilhaInt.length()}");
  print("Tamanho da pilha de Strings: ${pilhaString.length()}");
}
