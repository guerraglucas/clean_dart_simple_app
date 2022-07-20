// contrato do repositório
import 'package:dartz/dartz.dart';

import '../entities/carro_entity.dart';

abstract class SaveCarroFavoritoRepository {
  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
