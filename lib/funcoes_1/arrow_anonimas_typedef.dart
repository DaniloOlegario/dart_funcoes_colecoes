void main() {
// Funcoes Arrow - OK
// Funcoes Anonimas - OK
// Typedef - OK

  // var nome = '';
  // var idade = 1;
  funcaoQualquer() {
    print('Chamou a funcao da variavel');
    return '2000';
  }

  print(funcaoQualquer());
  // print(nome.runtimeType);
  // print(idade.runtimeType);
  // print(funcaoQualquer.runtimeType);

  // () {
  //   print('funcao Anonima');
  // }();

// não esta invocando a função;
  somaInteiros;

  print(somaInteiros(10, 10));

  print('Iniciando chamada');
  cahamrUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nme veio vazio');
    } else {
      print(nome);
    }
  });
  print('Finalizando chamada');

  funx2((nome, nomeCompleto, {qq, required x, required x2}) => 'null');
}

// 3 partes
// 1 tipo retorno
// 2 nome
// 3 parametros(nomais, nomeados e opcionais)
int somaInteiros(int numero1, int numero2) => numero1 + numero2;
void somaInteirosVoid(int numero1, int numero2) => numero1 + numero2;

void cahamrUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome) {
  var nomeCompleto = 'Danilo Olegario';
  print('finalizando a funcao ChamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

void cahamrUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeONome) {
  var nomeCompleto = 'Danilo Olegario';
  print('finalizando a funcao ChamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

void funx(
    String Function(
      String nome,
      String nomecompleto, {
      required String? x,
      required String? x2,
      int? qq,
    }) nome) {}

void funx2(FuncaoQueRecebeNomeComplexo nome) {}

typedef FuncaoQueRecebeNome = void Function(String nome);
typedef FuncaoQueRecebeNomeComplexo = String Function(
    String nome, String nomeCompleto,
    {required String? x, required String? x2, int? qq});
