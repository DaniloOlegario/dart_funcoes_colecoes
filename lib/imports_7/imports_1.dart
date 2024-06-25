import 'somas/soma.dart' as soma;
import 'somas_nova/soma.dart' as nova_soma;
//import 'package:dart_funcoes_colecoes/imports_7/somas/soma.dart';

void main() {
  var totalDoubles = soma.somadoubles(10.1, 5.1);
  var totalInteiros = nova_soma.somaInteiros(10, 5);

  print('Total de doubles $totalDoubles');
  print('Total de inteiros $totalInteiros');
}
