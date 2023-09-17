import 'dart:io';

import 'package:calculadora_imc/exceptions/valor_invalido_exception.dart';
import 'package:calculadora_imc/models/console_utils.dart';
import 'package:calculadora_imc/models/pessoa.dart';
import 'exceptions/nome_invalido_exception.dart';
import 'function_calculadora.dart';

void app() {
  print("Olá! Insira suas informações para calcularmos seu IMC");

  String nome = ConsoleUtils.retornaCampoStringComTitulo("Digite seu nome");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } catch (e) {
    print(e);
    exit(0);
  }

  double? peso = ConsoleUtils.retornaCampoDoubleComTitulo(
      "Digite seu peso em kilos e utilizando ponto (.) | Ex: 75.8");

  try {
    if (peso == null || peso <= 0) {
      throw ValorInvalidoException(
          "Valor do peso deve ser preenchido ou ser maior que 0.");
    }
  } catch (e) {
    print(e);
    exit(0);
  }

  double? altura = ConsoleUtils.retornaCampoDoubleComTitulo(
      "Digite sua altura em metros e utilizando ponto (.) | Ex: 1.75");

  try {
    if (altura == null || altura <= 0) {
      throw ValorInvalidoException(
          "Valor da altura deve ser preenchido ou ser maior que 0.");
    }
  } catch (e) {
    print(e);
    exit(0);
  }

  Pessoa pessoa = Pessoa(nome, peso, altura);
  var imc = calculaIMC(pessoa.getPeso(), pessoa.getAltura());

  print(
      "${pessoa.getNome()} com seu peso de ${pessoa.getPeso()} e sua altura de ${pessoa.getAltura()} seu IMC ficou classificado como '$imc'");
}
