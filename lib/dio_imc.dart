import 'dart:io';

import 'package:dio_imc/exception/altura_invalida_exception.dart';
import 'package:dio_imc/exception/nome_invalido_exception.dart';
import 'package:dio_imc/exception/peso_invalido_exception.dart';
import 'package:dio_imc/models/Pessoa.dart';
import 'package:dio_imc/models/console_utils.dart';

imc() {
  print('Calculadora IMC');

  var nome = ConsoleUtils.lerNome('Digite seu nome:');
  var peso = ConsoleUtils.lerPeso('Digite seu peso:');
  var altura = ConsoleUtils.lerAltura('Digite seu altura:');

  try {
    if (nome == "") {
      throw NomeInvalidoException();
    }

    if (peso == null) {
      throw PesoInvalidoException();
    }

    if (altura == null) {
      throw AlturaInvalidaException();
    }
  } catch (e) {
    print(e);
    exit(0);
  }

  Pessoa pessoa = Pessoa(nome, peso, altura);
  var classificacao = ConsoleUtils.classificacao(pessoa.getIMC());

  print(
      "${pessoa.getNome()} seu peso é ${pessoa.getPeso()} e sua altura é ${pessoa.getAltura()} sua classificação: $classificacao");
}
