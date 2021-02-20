class Pessoa {
  String nome;
  int idade;
  double altura;
  double peso;

  double imc() =>
      double.parse((peso / (altura * altura)).toStringAsPrecision(2));

  String mensagem_imc(imc) {
    var mensagem = '';

    if (imc < 18.5) {
      mensagem = 'Abaixo do peso';
    } else if (imc > 18.5 && imc < 24.9) {
      mensagem = 'Peso normal';
    } else if (imc > 25 && imc < 29.9) {
      mensagem = 'Sobrepeso';
    } else if (imc > 30 && imc < 34.9) {
      mensagem = 'Obesidade grau 1';
    } else if (imc > 35 && imc < 39.9) {
      mensagem = 'Obesidade grau 2';
    } else {
      mensagem = 'Obesidade grau 3';
    }

    return mensagem;
  }
}
