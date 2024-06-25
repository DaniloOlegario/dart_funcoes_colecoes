void main() {
  // Mapa é uma representação de chave:valor
  final paciente = <String, String>{
    'nome': 'Danilo Olegario',
    'curso': 'Academia do Flutter'
  };

  // O mapa pode ser nulo mais se for criado deve conter a chave
  // e o valor não nulo
  Map<String, String>? pacienteNullSafety;

  // o mapa e o valor não pode ser nulos mais a chave pode ser nula
  Map<String?, String> pacienteNullSafety2 = {
    null: 'Danilo',
  };

  // o mapa e a chave não pode ser nulos mais o valor pode ser nula
  var pacienteNullSafety3 = <String, String?>{
    'nome': null,
  };

  var produtos = <String, String>{};
  // só sera adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'Macarrão');
  produtos.putIfAbsent('nome', () => 'Molho');
  print(produtos);

  produtos.update('nome', (value) => 'Molho');
  print(produtos);
  produtos.update('preço', (value) => '10', ifAbsent: () => '10');

  //recuperando o valor
  print('Produto ${produtos['nome']}');
  print('preço ${produtos['preço']}');

// O forEach não pode ser utilizado se for em uma requisição assyncrona
  print('.forEach');
  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });

  // Fazer algum processo assyncrono dentro dele
  print('.for in');
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }

  print('pegando todas as chaves');
  for (var key in produtos.keys) {
    print('Chave: $key');
  }

  print('Pegando tosdos os valores');
  for (var value in produtos.values) {
    print('Chave: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry('${key}_nova', value.toUpperCase());
  });
  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Danilo Olegario',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de flutter do Brasil!!!'
      },
      {
        'nome': 'Arquiteto Flutter',
        'descricao': 'Melhor curso de flutter do Brasil!!!'
      }
    ]
  };
  print(mapa);
}
