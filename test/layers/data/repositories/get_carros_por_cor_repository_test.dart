import 'package:clean_deivid_playlist/layers/data/datasources/local/get_carro_por_cor_local_datasource_imp.dart';
import 'package:clean_deivid_playlist/layers/data/repositories/get_carro_por_cor_repository_imp.dart';
import 'package:clean_deivid_playlist/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_deivid_playlist/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarrosPorCorRepository? repository =
      GetCarrosPorCorRepositoryImp(GetCarroPorCorLocalDataSourceImp());

  test('Espera-se que retorne um CarroEntity, independente da cor', () {
    var result = repository('qualquer');
    var resultadoEsperado = isInstanceOf<CarroEntity>();

    result.fold((error) => expect(error, Exception()),
        (success) => expect(success, resultadoEsperado));
  });
}
