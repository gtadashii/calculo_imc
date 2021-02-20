import 'dart:io';
import './src/calculo_imc.dart';

var pessoa = Pessoa();
void main(List<String> arguments) {
  print('Me diga seu nome: ');
  pessoa.nome = stdin.readLineSync();
  print('Me também a sua idade: ');
  pessoa.idade = int.parse(stdin.readLineSync());
  print('Agora para iniciar o cálculo, informe a sua altura: ');
  pessoa.altura = double.parse(stdin.readLineSync());
  print('Para finalizar, me diga o seu peso: ');
  pessoa.peso = double.parse(stdin.readLineSync());
  var imc = pessoa.imc();
  var mensagem = pessoa.mensagem_imc(imc);
  print('Você possui imc de ${imc}, classificado como: ${mensagem}');
}
