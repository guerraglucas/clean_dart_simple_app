import 'package:clean_deivid_playlist/layers/data/datasources/local/get_carro_por_cor_local_datasource_imp.dart';
import 'package:clean_deivid_playlist/layers/data/repositories/get_carro_por_cor_repository_imp.dart';
import 'package:clean_deivid_playlist/layers/domain/entities/carro_entity.dart';
import 'package:clean_deivid_playlist/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espera-se que retorne um carro independente da cor passada', () {
    var getCarrosPorUseCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarroPorCorLocalDataSourceImp()));

    var result = getCarrosPorUseCase('roxo');

    var resultadoEsperado = isInstanceOf<CarroEntity>();
    result.fold(
      (error) => expect(error, Exception()),
      (success) => expect(success, resultadoEsperado),
    );
  });

  test('Espera-se que retorne um carro entity com a cor vermelho', () {
    var getCarrosPorUseCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarroPorCorLocalDataSourceImp()));

    var resultadoEsperado = 'vermelho';
    var result = getCarrosPorUseCase('vermelho');
    result.fold(
        (error) => expect(
              error,
              Exception(),
            ),
        (success) => expect(
              success.cor,
              resultadoEsperado,
            ));
  });

  test('Espera-se que retorne um carro entity com a cor azul', () {
    var getCarrosPorUseCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarroPorCorLocalDataSourceImp()));

    var resultadoEsperado = 'azul';
    var result = getCarrosPorUseCase('azul');
    result.fold(
      (error) => expect(
        error,
        Exception(),
      ),
      (success) => expect(
        success.cor,
        resultadoEsperado,
      ),
    );
  });
}
