import 'package:dio_imc/dio_imc.dart';
import 'package:dio_imc/models/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('verificar calculo imc', () {
    var pessoa = Pessoa('Thiago', 69, 1.72);
    expect(pessoa.getIMC(), equals(23.323418063818284));
  });
}
