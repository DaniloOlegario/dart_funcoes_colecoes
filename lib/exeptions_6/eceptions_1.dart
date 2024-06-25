void main() {
  var idade = '29';
  String? nome;

  try {
    print('inicio');
    var idadeParse = int.parse(idade);
    //nome!.toLowerCase();

    if (idadeParse == 29) {
      throw Exception();
    }
    print('fim');
  } on FormatException catch (e, s) {
    //print(e);
    print(s);
    //print('Erro ao converter idade');
  } on TypeError {
    print('Erro ao converter idade');
  } on Exception {
    print('Erro idade == 29');
  } catch (e) {
    print('Erro a executar programa');
  } finally {
    print('finally');
  }
}
