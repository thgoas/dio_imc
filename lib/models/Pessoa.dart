class Pessoa {
  String _nome;
  double _peso;
  double _altura;

  Pessoa(String this._nome, double this._peso, double this._altura) {}

  setNome(String nome) {
    _nome = nome;
  }

  setPeso(double peso) {
    _peso = peso;
  }

  setAutura(double altura) {
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  double getIMC() {
    double alturaAoQuadrado = (_altura * _altura);
    print(_peso);
    print(_altura);
    print(alturaAoQuadrado);
    print(_peso / alturaAoQuadrado);
    return _peso / alturaAoQuadrado;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Peso": _peso,
      "Autura": _altura,
      "IMC": getIMC(),
    }.toString();
  }
}
