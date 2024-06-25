void main() {
  //Parametros Obrigatórios por default
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');
  //parametros Nomeados
  //Parametros nomeados são nulables por default
  //Parametors nomeados podem ser promovidos para null com checagem de null
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero2: 10.2, numero1: 10.2)}');

  somaDoublesObrigatorios(numero2: 5.2, numero1: 10.2);
  somaDoublesObrigatorios2(numero1: null, numero2: 10);

  print('Chamada com parametros default ${somaDoublesDefault(numero1: 10)}');

//Parametro Opcional
  somaIntOpcional();
  somaIntOpcional(1);
  somaIntOpcional(1, 1);

  parametrosNormaisComNomeados(1, nome: 'Danilo', idade: 29);

  parametrosNormaisComNomeados2(1, 'Danilo', 29);
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

double somaDoubles({double? numero1, numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}

double somaDoublesObrigatorios(
    {required double numero1, required double numero2}) {
  return numero1 + numero2;
}

double somaDoublesObrigatorios2(
    {required double? numero1, required double numero2}) {
  // if(numero1 == null){
  //   numero1 = 0;
  // } => pode ser substituido
  numero1 ??= 0;

  return numero1 + numero2;
}

double somaDoublesDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}

int somaIntOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}

void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}
