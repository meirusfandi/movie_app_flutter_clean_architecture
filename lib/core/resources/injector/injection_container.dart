import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:alice/alice.dart';
import 'package:movie_app/core/config/config_bloc.dart';
import 'package:movie_app/core/flavor/flavor_config.dart';
import 'package:movie_app/core/resources/network/rest_client.dart';
import 'package:movie_app/features/list_movie/data/datasource/list_movie_datasource.dart';
import 'package:movie_app/features/list_movie/data/datasource/list_movie_datasource_impl.dart';
import 'package:movie_app/features/list_movie/data/repositories/list_movie_repository_impl.dart';
import 'package:movie_app/features/list_movie/domain/repository/list_movie_repository.dart';
import 'package:movie_app/features/list_movie/domain/usecase/do_get_list_movie.dart';
import 'package:movie_app/features/list_movie/presentation/bloc/list_movie_bloc.dart';
import 'package:movie_app/generated/l10n.dart';

final sl = GetIt.instance;
const platform = MethodChannel("channel");

Future<void> init() async {
  final Dio dio = Dio();
  if (FlavorConfig.instance.flavor != FlavorType.prod) {
    Alice alice = Alice(showNotification: true);
    dio.interceptors.add(alice.getDioInterceptor());
    sl.registerSingleton<Alice>(alice);
  }

  sl.registerSingleton<RestClient>(RestClient(dio, baseUrl: FlavorConfig.instance.server));
  sl.registerLazySingleton(() => const AppLocalizationDelegate());
  sl.registerLazySingleton(() => ConfigBloc());

  // datasource
  sl.registerLazySingleton<ListMovieDataSource>(() => ListMovieDataSourceImpl(sl()));

  // repository
  sl.registerLazySingleton<ListMovieRepository>(() => ListMovieRepositoryImpl(sl()));

  // usecase
  sl.registerLazySingleton(() => DoGetListMovie(sl()));

  // bloc
  sl.registerLazySingleton(() => ListMovieBloc(doGetListMovie: sl()));
}