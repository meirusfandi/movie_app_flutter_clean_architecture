import 'package:dio/dio.dart';
import 'package:movie_app/features/list_movie/data/model/response/list_movie_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('discover/movie')
  Future<ListMovieResponse> doGetListMovie(@Query("api_key") String apiKey);
}