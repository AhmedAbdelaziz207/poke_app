import 'package:dio/dio.dart';

class PokemonWebservice {
  static final Dio _dio = Dio(BaseOptions(
      baseUrl: "https://raw.githubusercontent.com/",
      receiveDataWhenStatusError: true));

 static Future<Response> get(String url ) async {
    Response response =  await _dio.get(url);
    return response ;
  }
}
