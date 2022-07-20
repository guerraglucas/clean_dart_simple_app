import 'package:clean_deivid_playlist/layers/domain/entities/carro_entity.dart';
import 'package:clean_deivid_playlist/layers/domain/repositories/save_carro_favorito_repository.dart';
import 'package:dartz/dartz.dart';

class SaveCarroFavoritoRepositoryImp implements SaveCarroFavoritoRepository {
  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    try {
      return Right(carroEntity.valor > 0);
    } catch (e) {
      return Left(Exception());
    }
  }
}
