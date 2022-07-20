//contrato
import 'package:dartz/dartz.dart';

import '../../entities/carro_entity.dart';

abstract class GetCarrosPorCorUseCase {
  Either<Exception, CarroEntity> call(String cor);
}
