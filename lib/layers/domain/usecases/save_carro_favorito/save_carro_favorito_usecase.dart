import 'package:dartz/dartz.dart';

import '../../entities/carro_entity.dart';

abstract class SaveCarroFavoritoUseCase {
  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
