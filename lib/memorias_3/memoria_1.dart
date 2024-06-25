void main() {
  // var lista = ['Danilo'];
  // print(lista.hashCode);
  // print(lista);
  // funcao(lista);
  // print(lista);

  // var nome = 'Danilo Olegario';
  // print(nome);
  // print(nome.hashCode);
  // funcao2(nome);
  // print(nome);
  // print(nome.hashCode);

  var list = ['Danilo'];
  print(list);
  add(list);
  print(list);

  var listaProdutos = ['PRod'];
  print(listaProdutos);
  var valor = calculaCarrinho(listaProdutos);
  print(valor);
  print(listaProdutos);
}

int calculaCarrinho(List<String> produtos) {
  produtos.clear();
  return 10;
}

void funcao2(String nome) {
  nome += 'Academia do Flutter';
  print(nome);
  print(nome.hashCode);
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  // nomes.add('Olegario');
  if (nomes.isNotEmpty) {
    nomes.clear();
  }
}

List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Danilo Olegario');
  print(novoNomes);
  return novoNomes;
}
