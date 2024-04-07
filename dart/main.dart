import 'cartao.dart';
import 'cliente.dart';
import 'compra.dart';
import 'conta.dart';
import 'fatura.dart';
import 'introducao.dart';

main() {
  //int ano = 2024;
  //print('Estamos no ano $ano');

  //int num = 4;
  //if (num % 2 == 0) {
  //  print('Este número é par!');
  //} else {
  //  print('Este número é ímpar!');
  //}

  //LISTAS
  //var list = [1, 2, 3];
  //print(list.contains(2));

  //SET - MAP Array composto por chave e valor
  //var alunos = <String, List>{
  //  'Carol': [1, 2, 3],
  //};

  //Introducao carolina = Introducao(nome: 'Carolina', sobrenome: 'Dourado');

  //print('O nome é ${carolina.nome} e o sobrenome é ${carolina.sobrenome}.');
  
  //print('O nome completo é ${carolina.nomeCompleto}');


  var conta = Conta(
    cliente: Cliente(
      id: '123', 
      cpf: '04683155192', 
      nome: 'Carolina', 
      sobrenome: 'Dourado'
      ), 
    cartao: Cartao(
      limite: 12500, 
      numero: '123456', 
      mes: 06, 
      ano: 2024, 
      codigo: 123
      ), 
    faturas: [
      Fatura(
        compras: [
          Compra(
            valor: 12.5,
            descricao: 'Coca-Cola',
            data: '12/06'
            ),

          Compra(
            valor: 10.0,
            descricao: 'Café',
            data: '13/06'
            ),
        ],
          mes: 6,
          ano: 2021,
          ),
      ],
  );
}
