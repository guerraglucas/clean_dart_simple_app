import 'package:dartz/dartz.dart';

import '../../dtos/carro_dto.dart';
import '../get_carro_por_cor_datasouce.dart';

class GetCarroPorCorLocalDataSourceImp implements GetCarroPorCorDataSource {
  @override
  Either<Exception, CarroDto> call(String cor) {
    final json = {
      'placa': 'ABC123',
      'qtdPortas': 4,
      'valor': 50000.0,
      'cor': cor
    };

    final anotherJson = {
      'placa': 'QWE123',
      'qtdPortas': 2,
      'valor': 25000.0,
      'cor': cor
    };
    try {
      if (cor.contains('vermelho')) {
        return Right(CarroDto.fromMap(json));
      }
      return Right(CarroDto.fromMap(anotherJson));
    } catch (e) {
      return Left(Exception());
    }
  }
}
