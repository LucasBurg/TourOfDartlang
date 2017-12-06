
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

//Maps são um objeto composto por chave valor
var k = {
  'cep': 123123123,
  'nome': 'Lucas Daniel Burg Mota',
  'data_nascimento': '05/10/1994'
};

/**** 

Não funcionou para versão 1.x
---------------------

var kk = new Map();
kk['cep'] = '8123672163261';
kk['nome'] = 'Maria de Souza';
kk['data_nascimento'] = '10/11/2018';

*/

void enableOptions({bool viewEmail, bool viewProcesso}) {
  print(viewEmail); 
}

String fale(String para, String msg, [String assunto]) {
  String result = "${para}: ${msg}";
  if (assunto != null) {
    result = "${result}, sobre ${assunto}";
  }
  return result;
}

void funcComListeMap({List<int> idade = const[1, 2, 3], Map<String, String> pessoa = const {'Lucas': 'M', 'Maria': 'F', 'Jucá': 'F'}}) {
  print("Lista: ${idade}");
  print("Map: ${pessoa}");
}

Function somaComInicio(num numInicial) {
  return (num i) => i + numInicial;
}

void foo() {}

class Ax {
  static void bar() {}
  void bar() {}
}

//Getter e Setter
class ABCx {
  num ax, bx, cx;
  ABCx(this.ax, this.bx, this.cx);
  num get ax => ax;
  set ax(num val) => ax = val; 
}

abstract class Animal {
  void andar();
  void correr();
}

class Cachorro extends Animal {
  void andar() {
    print('O cachorro anda');
  }
}

class Gato extends Animal {
  void andar() {
    print('o gato mia'); 
  }
}

//Class base
class Pessoa {
  final _nome;
  Pessoa(this._nome);
  String elogiar(String elogio) => "Olá, ${_nome}. ${elogio}";
}

//Implementa pessoa, hidrata estruturas, defini metodos  
class Mario implements Pessoa {
  get _nome => 'Mario';
  String elogiar(String elogio) => "Oi, ${_nome}, ${elogio}";
}

//Uma função boba, parece uma factory
String elogiarAlguem(Pessoa pes, String elo) => pes.elogiar(elo);

enum Peixes {galhudo, pampo, robson}

//Utilizando o conceito de mixins
class Afiador {

}

class Lamina {

}

class Canivete extends Lamina {

}

class Faca extends Lamina with Afiador {

}

class FacaSimples 
{

}

class TabuaDeCortarCarne {

}

class Sal {

}

class SalGrosso extends Sal {

}

class Churras {

}

/***** 

Não funciona porque Faca é considerada uma class final, só é possivel utilizar classes simples
----------------------------

class KitChurras extends Churras with TabuaDeCortarCarne, Faca {

}
*/

class KitChurras extends Churras with TabuaDeCortarCarne, Sal, FacaSimples {

}





//Tudo inicia pelo main
void main(List<String> args) {

  print(Peixes.galhudo.index);
  print(Peixes.pampo.index);

  List<Peixes> peixes = Peixes.values;
  print(peixes);

  Pessoa objMario = new Pessoa('Mario');
  print(objMario.elogiar('Você é um bom menino'));

  print(elogiarAlguem(new Pessoa('Julia'), 'Vc cozinha muito bem'));
  print(elogiarAlguem(new Mario(), 'És um doido'));
  
  Cachorro objCachorro = new Cachorro();
  objCachorro.andar();

  Gato objGato = new Gato();
  objGato.andar();

  ABCx objAbc = new ABCx(10, 20, 30);

  print(objAbc.ax);

  objAbc.ax = 40;

  print(objAbc.ax);

  print(args);

  var numero = 10000;
  printNumber(numero);

  print(mercados);

  var x = int.parse('1123123281');
  print(x);

  assert(x == 112312321);

  print(k);

  //print(kk);

  enableOptions(viewProcesso: true, viewEmail: false);

  String frase1 = fale('Lucas', 'Agora vai', 'Carro');
  print(frase1);

  String frase2 = fale('Eduardo', 'Compre alguns ovos');
  print(frase2);
  
  funcComListeMap();

  //retorna funcoes
  Function somaCom10 = somaComInicio(10);
  print(somaCom10(5));

  Function somaCom15 = somaComInicio(15);
  print(somaCom15(30));


  

}