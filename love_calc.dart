import 'dart:math';
import 'dart:io';

//Definindo um valor padrão as variaveis;
int userGenerated = 0;
int partnerGenerated = 0;

//Função para retornar um valor aleatório como resultado;
int loveRateGenerator() {
  Random randomValue = Random();
  int calcRandom = randomValue.nextInt(100);
  return calcRandom;
}

//Função para o input dos dados do usuário;
String prompt(String promptText) {
  print(promptText);
  dynamic answer = stdin.readLineSync();

  return answer;
}

void userData() {
  String name = prompt('Digite seu nome:');
  String sign = prompt('Digite seu signo:');
  userGenerated = loveRateGenerator();
}

void partnerData() {
  String namePartner = prompt('Digite o nome do seu parceiro:');
  String signPartner = prompt('Digite o signo do seu parceiro:');
  partnerGenerated = loveRateGenerator();
}

//Função para gerar o resultado final do teste, realizando a soma dos dois valores de cada teste;
void loveResult() {
  var result = userGenerated + partnerGenerated;
  print('\n A compatibilidade desse casal é $result%');
}

//Função principal que da a estrutura para o progama e orienta o usuário para o que deve ser feito;
void main() {
  print('\n Para calcular seu "match" com alguem, preencha os campos abaixo:');
  userData();
  print('\n Ótimo, agora preencha as informações do seu parceiro.');
  partnerData();

  loveResult();
}
