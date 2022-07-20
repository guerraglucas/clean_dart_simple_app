import 'package:dartz/dartz.dart';

import '../../entities/carro_entity.dart';
import '../../repositories/save_carro_favorito_repository.dart';
import 'save_carro_favorito_usecase.dart';

// princípio DIP - Dependency Inversion Principle
// quem for criar o usecase de salvar o carro, vai necessariamente passar como parâmetro o contrato repository a ser utilizado.

class SaveCarroFavoritoUseCaseImp implements SaveCarroFavoritoUseCase {
  final SaveCarroFavoritoRepository _saveCarroFavoritorepository;

  SaveCarroFavoritoUseCaseImp(this._saveCarroFavoritorepository);

  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    // para salvar um carro como favorito, precisamos de um repository, para fazer conexão com o db,
    // ou seja lá onde vamos salvar, o use case não conhece
    // delegamos a responsabilidade de salvar o carro a um repository e aguardamos o resultado
    carroEntity.setAjusteValor();
    return await _saveCarroFavoritorepository(carroEntity);
  }
}
