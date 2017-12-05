
const km = 1000;

const double gas = 123.3092;

var nome;

int idade;

String nome_completo = 'Luca Daniel Burg Mota';

var estados = const ['SC', 'PR', 'SP'];

final contas = const ['Aluguel', 'Despesas financeira', 'Caixa'];

const mercados = const['Fort', 'Giassi', 'Big'];

double y = 1.1;

//uma função comum
printNumber(num a) {
  print('um numero qualquer ${a}');
}

//essas funções fazem a mesma coisa porem com a syntax 
var _g = {
  1: 'SC',
  2: 'PR',
};

bool isNoble(int a) {
  return _g[a] != null;
}

isNobleX(a) {
  return _g[a] != null;
}

bool isNobleXX(int a) => _g[a] != null;


//tudo inicia pelo main
main() {
  var numero = 10000;

  printNumber(numero);

  print(mercados);

  var x = int.parse('112312321');

  print(x);

}