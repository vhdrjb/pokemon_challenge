// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../data/local/configuration/configuration_persistence.dart' as _i6;
import '../../data/remote/pokemon/pokemon_api_service.dart' as _i11;
import '../../data/repository/configuration/configuration_datasource.dart'
    as _i5;
import '../../data/repository/configuration/configuration_repository.dart'
    as _i7;
import '../../data/repository/pokemon/pokemon_datasource.dart' as _i10;
import '../../data/repository/pokemon/pokemon_repository.dart' as _i13;
import '../../domain/configuration/get/get_current_configuration_use_case.dart'
    as _i9;
import '../../domain/domain.dart' as _i16;
import '../../domain/pokemon/list/get_pokemon_list_usecase.dart' as _i14;
import '../../presentation/modules/global/global_bloc.dart' as _i12;
import '../routing/app_router.dart' as _i18;
import '../routing/provider/home_route_provider.dart' as _i15;
import '../routing/provider/splash_route_provider.dart' as _i4;
import '../routing/route_factory.dart' as _i17;
import 'data_module.dart' as _i19;
import 'network_module.dart' as _i20;
import 'presentation_module.dart' as _i21;

const String _prod = 'prod';
const String _dev = 'dev';
const String _stage = 'stage';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    final networkModule = _$NetworkModule();
    final presentationModule = _$PresentationModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => dataModule.provideSharedPreferences(),
      preResolve: true,
    );
    gh.factory<_i4.SplashRouteProvider>(() => _i4.SplashRouteProvider());
    gh.factory<_i5.ConfigurationDatasource>(() =>
        _i6.ConfigurationPersistence(preferences: gh<_i3.SharedPreferences>()));
    gh.singleton<_i7.ConfigurationRepository>(() => _i7.ConfigurationRepository(
        datasource: gh<_i5.ConfigurationDatasource>()));
    gh.factory<String>(
      () => networkModule.baseUrl,
      instanceName: 'base_url',
      registerFor: {_prod},
    );
    gh.factory<String>(
      () => networkModule.devBaseUrl,
      instanceName: 'base_url',
      registerFor: {
        _dev,
        _stage,
      },
    );
    gh.factory<_i8.Dio>(
      () => networkModule.provideDevDio(gh<String>(instanceName: 'base_url')),
      registerFor: {
        _dev,
        _stage,
      },
    );
    gh.factory<_i8.Dio>(
      () => networkModule.provideDio(gh<String>(instanceName: 'base_url')),
      registerFor: {_prod},
    );
    gh.factory<_i9.GetCurrentConfigurationUseCase>(() =>
        _i9.GetCurrentConfigurationUseCase(
            repository: gh<_i7.ConfigurationRepository>()));
    gh.factory<_i10.PokemonDatasource>(
        () => _i11.PokemonApiService(gh<_i8.Dio>()));
    gh.factory<_i12.GlobalBloc>(() => presentationModule
        .provideGlobalBloc(gh<_i9.GetCurrentConfigurationUseCase>()));
    gh.factory<_i13.PokemonRepository>(
        () => _i13.PokemonRepository(datasource: gh<_i10.PokemonDatasource>()));
    gh.factory<_i14.GetPokemonListUsecase>(() =>
        _i14.GetPokemonListUsecase(repository: gh<_i13.PokemonRepository>()));
    gh.factory<_i15.HomeRouteProvider>(() => _i15.HomeRouteProvider(
        getPokemonListUsecase: gh<_i16.GetPokemonListUsecase>()));
    gh.lazySingleton<_i17.RouteFactory>(() => _i17.RouteFactory(
          splashRouteProvider: gh<_i4.SplashRouteProvider>(),
          homeRouteProvider: gh<_i15.HomeRouteProvider>(),
        ));
    gh.lazySingleton<_i18.AppRouter>(
        () => _i18.AppRouter(routeFactory: gh<_i17.RouteFactory>()));
    return this;
  }
}

class _$DataModule extends _i19.DataModule {}

class _$NetworkModule extends _i20.NetworkModule {}

class _$PresentationModule extends _i21.PresentationModule {}
