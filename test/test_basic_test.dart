import 'package:commit_ai/core/sum.dart';
import 'package:test/test.dart';

void main() {
  group('Pruebas de la función sum', () {
    test('Suma de dos números positivos', () {
      expect(sum(2, 3), equals(5));
    });

    test('Suma de un número positivo y un número negativo', () {
      expect(sum(2, -3), equals(-1));
    });

    test('Suma de dos números negativos', () {
      expect(sum(-2, -3), equals(-5));
    });
  });
}
