/* Implemente uma função que receba um número inteiro positivo e retorne o
somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao
número passado */

import 'dart:io';

List divisiveis = [];
num resultadoDaSoma = 0;

// função que recebe um numero inteiro positivo inserido pelo usuario, calcula o somatório dos valores inteiros divisiveis por 3 ou 5 inferiores ao numero inserido.
calcular() {
  //mensagem inicial
  print(
      '\n\n### Bem vindo ! ###\n\nTeste Técnico 01.\n\nEssa aplicação recebe um numero inteiro positivo e retorna o somatório de todos os valores divisíveis por 3 ou 5\nque sejam inferiores ao numero digitado pelo usuário.  \n \n');

  // pede para o usuario inserir um numero
  print(' Insira um numero maior que 0\n');
  int numInserido = int.parse(stdin.readLineSync()!);

  // verifica se o numero inserido é maior que 0, caso não seja, pede para inserir novamente.
  while (numInserido < 0) {
    print(
        '\nO numero precisa ser maior que 0, numero inserido: "$numInserido"\n');
    print(' Insira um numero maior que 0\n');
    numInserido = int.parse(stdin.readLineSync()!);
  }

  // pega os numeros anteriores ao numero digitado, verifica qual é divisivel por 3 ou 5 e adiciona no array de divisiveis
  for (var i = 1; i < numInserido; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      divisiveis.add(i);
    }
  }

  // percorre o array dos numeros divisiveis por 3 ou 5 e soma os valores
  divisiveis.forEach((element) {
    resultadoDaSoma += element;
  });

  // exibe o resultado
  print(
      '\n Numero inserido: $numInserido\n Somar numeros: $divisiveis\n Resultado da Soma: $resultadoDaSoma\n');
  print(' Obrigado ! Code made by : Raphahf6 \n');
}

// chama a função
void main() {
  calcular();
}

// code made by : Raphahf6