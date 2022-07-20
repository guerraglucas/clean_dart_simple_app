import 'package:clean_deivid_playlist/layers/data/datasources/get_carro_por_cor_datasouce.dart';
import 'package:clean_deivid_playlist/layers/data/datasources/local/get_carro_por_cor_local_datasource_imp.dart';
import 'package:clean_deivid_playlist/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarroPorCorDataSource dataSource = GetCarroPorCorLocalDataSourceImp();
  test(
    'Espera-se que retorne um CarroEntity, independente da cor',
    () {
      var result = dataSource('qualquer');
      var resultadoEsperado = isInstanceOf<CarroEntity>();

      result.fold(
        (error) => expect(error, Exception()),
        (success) => expect(success, resultadoEsperado),
      );
    },
  );
  test(
    'Espera-se que retorne um CarroEntity com a cor vermelha',
    () {
      var result = dataSource('vermelho');

      var resultadoEsperado = 'vermelho';

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
    },
  );
}
