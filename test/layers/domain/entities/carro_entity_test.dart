import 'package:clean_deivid_playlist/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espera-se que entidade não seja nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000, cor: '');
    expect(carroEntity, isNotNull);
  });

  test('Espera-se que a quantidade de portas seja 2', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000, cor: '');
    expect(carroEntity.qtdPortas, 2);
  });

  test('Espera-se que o valor real seja 2000', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000, cor: '');

    var valorRealExperado = 2000;
    expect(carroEntity.valorReal, valorRealExperado);
  });

  test('Espera-se que o valor real seja 0', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 0, valor: 1000, cor: '');

    var valorRealExperado = 0;
    expect(carroEntity.valorReal, valorRealExperado);
  });

  test('Espera-se que o valor seja 10000', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 5000, cor: '');

    carroEntity.setAjusteValor();
    var resultadoEsperado = 5000 * 2;
    expect(carroEntity.valor, resultadoEsperado);
  });
}
