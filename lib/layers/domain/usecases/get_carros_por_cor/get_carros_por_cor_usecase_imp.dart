//implementacao do contrato de usecase
import 'package:clean_deivid_playlist/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:dartz/dartz.dart';

import '../../entities/carro_entity.dart';
import 'get_carros_por_cor_usecase.dart';

//Os imports dentro dos usecases devem sempre ser da camada de domínio
//use cases não conhecem o mundo externo, não temos chamadas a API aqui

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarrosPorCorUseCaseImp(this._getCarrosPorCorRepository);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
