void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  print(' ');
  print('1 - Remova os pacientes duplicados e apresente a nova lista ');
  print(' ');

  final pessoasSemDuplicado =
      pessoas.toSet().map((pessoa) => pessoa.split('|')).toList();
  for (var nome in pessoasSemDuplicado) {
    print(nome[0]);
  }

  // for (final pessoa in pessoas) {
  //   final dadosPessoas = pessoa.split('|');
  //   // final
  //   // final nome = dadosPessoas[0];
  //   final novo = dadosPessoas.toSet();

  //   print(novo);

  //   // final teste = nome..toSet();

  //   // print(teste.elementAt(0));
  // }

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print(' ');
  print(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas ');
  print(' ');
  //não entendi 100% o conseito, estudar mais os MAPS para melhor entendimento.

  // final sexoMasculino =
  // pessoas.toSet().map((pessoa) => pessoa.split('|')).toList().toString();
  // var dadosPessoas.contains('Masculino');

  // final listaMasculino = pessoas.where((pessoas)
  // => sexoMasculino.length().contais('Masculino')).toList();
  // print(sexMasculino);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print(' ');
  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome ');
  print(' ');
  for (final pessoa in pessoas) {
    var dadosPessoas = pessoa.split('|');
    var nome = dadosPessoas[0];
    var idadePessoas = int.tryParse(dadosPessoas[1]) ?? 0;
    if (idadePessoas > 18) {
      print(nome);
    }
  }
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print(' ');
  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');
  print(' ');
  for (final pessoa in pessoas) {
    var dadosPessoas = pessoa.split('|');
    var nome = dadosPessoas[0];
    var idadePessoas = int.tryParse(dadosPessoas[1]) ?? 0;
    if (idadePessoas > 85) {
      print(nome);
    }
  }
}
