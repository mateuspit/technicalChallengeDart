import 'package:cli/sum_three_and_five_multiples_until.dart';
import 'package:test/test.dart';

void main() {
  group('Validações de Entrada', () {
    test('Deve retornar mensagem de erro para entrada do tipo String "string"',
        () {
      expect(sumThreeAndFiveMultiplesUntil("string"),
          "A entrada recebida não é um número!");
    });

    test('Deve retornar mensagem de erro para entrada do tipo boolean true',
        () {
      expect(sumThreeAndFiveMultiplesUntil(true),
          "A entrada recebida não é um número!");
    });

    test('Deve retornar mensagem de erro para entrada do tipo boolean false',
        () {
      expect(sumThreeAndFiveMultiplesUntil(false),
          "A entrada recebida não é um número!");
    });

    test('Deve retornar mensagem de erro para número negativo', () {
      expect(sumThreeAndFiveMultiplesUntil(-5),
          "O número recebido não é positivo!");
    });
  });

  group('Cálculos', () {
    test('Deve retornar 23 para entrada do tipo String "10"', () {
      expect(sumThreeAndFiveMultiplesUntil("10"), 23);
    });

    test('Deve retornar 0 para entrada do tipo int 0', () {
      expect(sumThreeAndFiveMultiplesUntil(0), 0);
    });

    test('Deve retornar 23 para entrada do tipo int 10', () {
      expect(sumThreeAndFiveMultiplesUntil(10), 23);
    });

    test('Deve retornar 33 para entrada do tipo int 11', () {
      expect(sumThreeAndFiveMultiplesUntil(11), 33);
    });
  });

  group('Tratamento de Overflow', () {
    test('Deve retornar mensagem de erro para overflow de entrada', () {
      expect(sumThreeAndFiveMultiplesUntil(9007199254740992),
          "Overflow no número de entrada!");
    });

    test('Deve retornar mensagem de erro para overflow durante os cálculos',
        () {
      expect(sumThreeAndFiveMultiplesUntil(9007199254740991),
          "Overflow durante a soma!");
    });
  });
}
