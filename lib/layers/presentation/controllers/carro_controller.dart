import '../../domain/entities/carro_entity.dart';
import '../../domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import '../../domain/usecases/save_carro_favorito/save_carro_favorito_usecase.dart';

class CarroController {
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SaveCarroFavoritoUseCase _saveCarroFavoritoUseCase;

  CarroController(
      this._getCarrosPorCorUseCase, this._saveCarroFavoritoUseCase) {
    getCarrosPorCor('vermelho');
  }

  late CarroEntity carro;

  getCarrosPorCor(String cor) {
    var result = _getCarrosPorCorUseCase(cor);
    result.fold(
      (error) => print(error.toString()),
      (success) => carro = success,
    );
  }

  saveCarroFavorito(CarroEntity carro) async {
    var result = await _saveCarroFavoritoUseCase(carro);
    result.fold(
      (error) => print(error.toString()),
      (success) => success,
    );
  }
}
