// entities não devem ter imports de bibliotecas ou arquivos externos
// poderia ter imports de outras entidades que estão na mesma camada

class CarroEntity {
  String placa;
  String cor;
  int qtdPortas;
  double valor;

  CarroEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
    required this.cor,
  });

  double get valorReal =>
      valor *
      qtdPortas; // regra de negócio da entidade, só depende dela mesma, então está aqui dentro

  setAjusteValor() => valorReal > 10000 ? valor *= 2 : valor;
}
