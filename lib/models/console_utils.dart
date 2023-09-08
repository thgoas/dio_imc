import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerNome(String texto) {
    print(texto);
    return lerString();
  }

  static double? lerPeso(String texto) {
    print(texto);
    return lerDouble();
  }

  static double? lerAltura(String texto) {
    print(texto);
    return lerDouble();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static String? classificacao(double value) {
    if (value < 16) {
      return 'Magreza grave';
    } else if (value >= 16 && value < 17) {
      return 'Magreza moderada';
    } else if (value >= 17 && value < 18.5) {
      return 'Magreza leve';
    } else if (value >= 18.5 && value < 25) {
      return 'Saudável';
    } else if (value >= 25 && value < 30) {
      return 'Sobrepeso';
    } else if (value >= 30 && value < 35) {
      return 'Obesidade Grau I';
    } else if (value >= 35 && value < 40) {
      return 'Obesidade Grau II (Severa)';
    } else if (value >= 40) {
      return 'Obesidade Grau III (mórbida)';
    } else {
      return null;
    }
  }
}
