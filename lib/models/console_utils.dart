import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String leConsole() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String retornaCampoStringComTitulo(String texto) {
    print(texto);
    var valor = leConsole();
    return valor;
  }

  static double? retornaCampoDoubleComTitulo(String texto) {
    print(texto);
    var valor = leConsole();

    try {
      return double.parse(valor);
    } catch (e) {
      return null;
    }
  }
}
