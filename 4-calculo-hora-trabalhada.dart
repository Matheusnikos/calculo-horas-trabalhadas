import 'dart:io';

void main() {
  print(
      '== Bem-vindo! Nesse programa você irá descobrir qual o valor das suas horas trabalhadas! ==');
  print("\x1B[2J\x1B[0;0H");

  num valorSalario = pegarValorSalario();
  print("\x1B[2J\x1B[0;0H");

  num valorHoras = pegarValorHoras();
  print("\x1B[2J\x1B[0;0H");

  num valorHoraTrabalhada = valorSalario / valorHoras;

  print('O valor da sua hora trabalhada é de $valorHoraTrabalhada reais');
}

pegarValorSalario() {
  print('Insira o valor total do seu salário');
  String? valorSalarioString = stdin.readLineSync();
  if (valorSalarioString == null) {
    return 0.0;
  } else {
    return num.parse(valorSalarioString);
  }
}

pegarValorHoras() {
  print('Insira o valor total de horas trabalhadas');
  String? valorHorasString = stdin.readLineSync();
  if (valorHorasString == null) {
    return 0.0;
  } else {
    return num.parse(valorHorasString);
  }
}
