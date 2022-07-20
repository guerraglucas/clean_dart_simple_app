// responsável pela injeção de dependencia automatizada

import '../../layers/presentation/controllers/carro_controller.dart';
import '../../layers/data/datasources/get_carro_por_cor_datasouce.dart';
import '../../layers/data/datasources/local/get_carro_por_cor_local_datasource_imp.dart';
import '../../layers/data/repositories/get_carro_por_cor_repository_imp.dart';
import '../../layers/data/repositories/save_carro_favorio_repository_imp.dart';
import '../../layers/domain/repositories/get_carros_por_cor_repository.dart';
import '../../layers/domain/repositories/save_carro_favorito_repository.dart';
import '../../layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import '../../layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import '../../layers/domain/usecases/save_carro_favorito/save_carro_favorito_usecase.dart';
import '../../layers/domain/usecases/save_carro_favorito/save_carro_favorito_usecase_imp.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt
        .instance; // um 'container' constante que abriga as nossas dependências, ocupa um espaço em memória durante toda a aplicação

    // importante seguir essa ordem de registro, já que ao registrar as próximas camadas, o anterior é necessário como dependência
    //datasources
    getIt.registerLazySingleton<GetCarroPorCorDataSource>(
      () => GetCarroPorCorLocalDataSourceImp(),
    );

    //repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
      () => GetCarrosPorCorRepositoryImp(
        getIt(),
      ), // aqui o get it é inteligente o suficiente para encontrar o singleton
    ); //que o repository exige como dependência e injetar automaticamente (o datasource registrado acima)

    getIt.registerLazySingleton<SaveCarroFavoritoRepository>(
      () => SaveCarroFavoritoRepositoryImp(),
    );

    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
      () => GetCarrosPorCorUseCaseImp(getIt()),
    );

    getIt.registerLazySingleton<SaveCarroFavoritoUseCase>(
        () => SaveCarroFavoritoUseCaseImp(getIt()));

    //controllers
    getIt.registerFactory<CarroController>(
      // o factory sempre gera um novo controller quando é chamado, diferente do singleton que sempre é o mesmo objeto por toda a aplicação
      () => CarroController(getIt(), getIt()),
    );
  }
}
