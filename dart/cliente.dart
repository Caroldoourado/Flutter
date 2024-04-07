import 'pessoa.dart';

class Cliente extends Pessoa {
  String id;
  String cpf;

  Cliente(
      {required this.id,
      required this.cpf,
      required String nome,
      required sobrenome})
      : super(nome: nome, sobrenome: sobrenome);
}
