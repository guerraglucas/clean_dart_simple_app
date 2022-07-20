import '../../domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  CarroDto({
    required super.qtdPortas,
    required super.valor,
    required super.placa,
    required super.cor,
  });

  Map toMap() {
    return {
      "placa": this.placa,
      "qtdPortas": this.qtdPortas,
      "valor": this.valor,
      "cor": this.cor,
    };
  }

  static fromMap(Map<String, dynamic> map) {
    return CarroDto(
      qtdPortas: map['qtdPortas'],
      valor: map['valor'],
      placa: map['placa'],
      cor: map['cor'],
    );
  }
}
