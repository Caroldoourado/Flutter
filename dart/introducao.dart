class Introducao {
  //Para indicar que a variável pode ser nula usa-se late(indica que a inicalização da variável vai ser depois) antes do tipo da variável ou ?(indica que a variável pode ser nula) depois do tipo da variável.
  String nome;
  String sobrenome;
  //Ou usa-se o required desta forma abaixo
  Introducao({required this.nome, required this.sobrenome}) {}

  //Para declarar variáveis privadas usa-se o _ (undescore)
  late String _anodenascimento;

  //Para acessar essas variáveis de fora é preciso dos gets e setters
  get anodenascimento => this._anodenascimento;
  set anodenascimento(n) => this._anodenascimento = n;

  //Neste caso não pode adicionar o _anodenascimento no construtor, então coloca-se late antes do tipo da variavél, indicando que ela será inicializada depois

  //Pode-se também criar propriedades computadas
  get nomeCompleto => this.nome + ' ' + this.sobrenome + '.';
}
