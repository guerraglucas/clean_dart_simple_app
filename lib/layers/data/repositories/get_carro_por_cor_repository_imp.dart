import '../datasources/get_carro_por_cor_datasouce.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarroPorCorDataSource _getCarroPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._getCarroPorCorDataSource);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    // chamamos a api e ela respondeu um json

    return _getCarroPorCorDataSource(cor);
  }
}
