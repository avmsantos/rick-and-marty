import 'package:dio/dio.dart';

class HomeApiRepository {
  final String api = "https://rickandmortyapi.com/api/";

  Future<Response> getCharacters() async {
    String uri = '${api}character/';
    final Response response = await Dio().get(uri);
    return response;
  }
}

/*  void main() async {
  final HomeApiRepository teste = HomeApiRepository();
  final Response response = await teste.getCharacters();

  print(response.data);
}  */
