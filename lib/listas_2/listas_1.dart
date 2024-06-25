void main() {
  var numeros = List.generate(10, (index) => index);
  // numeros.forEach(print);
  numeros.forEach(printAcademia);

//Expand
// Array Bidimencional
  var lista = [
    [1, 2],
    [3, 4],
  ];

  // var listaNova = [...lista[0], ...lista[1]];
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

// Any
  print('.any');
  final listaBusca = ['Danilo', 'Andre', 'Lucas'];

  if (listaBusca.any((nome) => nome == 'Lucas')) {
    print('Tem Lucas');
  } else {
    print('Não tem Lucas');
  }

//Every
  print('.every');
  final listaBusca2 = ['Danilo', 'Andre', 'Lucas'];

  if (listaBusca2.every((nome) => nome.contains('D'))) {
    print('Todos os nomes tem a letra D');
  } else {
    print('Nem todos os nomes tem a letra D');
  }

  // Sort executa dentro dele mesmo ordena dentro dela mesma
  print('.sort');
  var listaParaOrdenacao = [99, 22, 10, 9, 0, 765, 1, 2, 3, 100, 300];

  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNmesordenacao = ['Danilo', 'Andre', 'Adão', 'Lucas'];
  listaNmesordenacao.sort();
  print(listaNmesordenacao);

  var listaPacientes = [
    'Danilo Olegario|29',
    'Estefani Olegario|30',
    'Iasmin Olegario|10',
    'Alice Olegario|7',
    'Helena Olegario|1'
  ];

  listaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaPacientes);

// CompareTo
  print('.sort com compareTo');
  var listaPacientes2 = [
    'Danilo Olegario|29',
    'Estefani Olegario|30',
    'Iasmin Olegario|10',
    'Alice Olegario|7',
    'Helena Olegario|1'
  ];

  listaPacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);
}

void printAcademia(Object valor) {
  print(valor);
}
