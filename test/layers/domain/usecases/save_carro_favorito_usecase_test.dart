import 'package:clean_deivid_playlist/layers/data/repositories/save_carro_favorio_repository_imp.dart';
import 'package:clean_deivid_playlist/layers/domain/entities/carro_entity.dart';
import 'package:clean_deivid_playlist/layers/domain/usecases/save_carro_favorito/save_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espera-se que retorne um booleano', () async {
    var saveUseCase =
        SaveCarroFavoritoUseCaseImp(SaveCarroFavoritoRepositoryImp());

    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 20000, cor: '');

    var resultadoEsperado = isA<bool>();

    var result = await saveUseCase(carroEntity);
    result.fold(
      (error) => expect(error, Exception()),
      (success) => expect(success, resultadoEsperado),
    );
  });

  test('Espera-se que salve um carro com sucesso', () async {
    var saveUseCase =
        SaveCarroFavoritoUseCaseImp(SaveCarroFavoritoRepositoryImp());

    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 20000, cor: '');

    var resultadoEsperado = true;

    var result = await saveUseCase(carroEntity);

    result.fold(
      (error) => expect(error, Exception()),
      (success) => expect(success, resultadoEsperado),
    );
  });

  test('Espera-se que não salve um carro com valor menor ou igual a zero',
      () async {
    var saveUseCase =
        SaveCarroFavoritoUseCaseImp(SaveCarroFavoritoRepositoryImp());

    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 0, cor: '');

    var resultadoEsperado = false;

    var result = await saveUseCase(carroEntity);

    result.fold(
      (error) => expect(error, Exception()),
      (success) => expect(success, resultadoEsperado),
    );
  });
}
