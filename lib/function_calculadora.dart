String calculaIMC(double peso, double altura) {
  if (peso == 0 || altura == 0) {
    return "Valores inválidos.";
  }

  double imc = peso / (altura * altura);
  String classificacao = "";
  if (imc < 16) {
    classificacao = "Magreza grave";
  } else if (imc < 17) {
    classificacao = "Magreza moderada";
  } else if (imc < 18.5) {
    classificacao = "Magreza leve";
  } else if (imc < 25) {
    classificacao = "Sauldável";
  } else if (imc < 30) {
    classificacao = "Sobrepeso";
  } else if (imc < 35) {
    classificacao = "Obsesidade Grau I";
  } else if (imc < 40) {
    classificacao = "Obsesidade Grau II (severa)";
  } else {
    classificacao = "Obsesidade Grau III (mórbida)";
  }

  return classificacao;
}
