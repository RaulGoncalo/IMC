import 'package:calculadora_imc/function_calculadora.dart';
import 'package:test/test.dart';

void main() {
  group("Calcula o valor do produto com desconto:", () {
    var valuesToTest = {
      {'peso': 0, 'altura': 0}: "Valores inválidos.",
      {'peso': 45, 'altura': 1.84}: "Magreza grave",
      {'peso': 55, 'altura': 1.84}: "Magreza moderada",
      {'peso': 60, 'altura': 1.84}: "Magreza leve",
      {'peso': 80, 'altura': 1.84}: "Sauldável",
      {'peso': 90, 'altura': 1.84}: "Sobrepeso",
      {'peso': 108, 'altura': 1.84}: "Obsesidade Grau I",
      {'peso': 130, 'altura': 1.84}: "Obsesidade Grau II (severa)",
      {'peso': 150, 'altura': 1.84}: "Obsesidade Grau III (mórbida)"
    };
    valuesToTest.forEach((values, expected) {
      test('Entrada: $values Esperado:$expected', () {
        expect(
            calculaIMC(
              double.parse(values["peso"].toString()),
              double.parse(values["altura"].toString()),
            ),
            equals(expected));
      });
    });
  });
}
