import 'package:dartz/dartz.dart';

import '../dtos/carro_dto.dart';

abstract class GetCarroPorCorDataSource {
  Either<Exception, CarroDto> call(String cor);
}
