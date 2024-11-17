import 'package:test/test.dart';

// Función simple para sumar dos números
int sum(int a, int b) {
  return a + b;
}

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
