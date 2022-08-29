import 'package:dio/dio.dart';
import '../data/home_api_repository.dart';
import '../models/character_api.dart';

class HomeController {
  final homeApiRepository = HomeApiRepository();

  Future<List<CharacterApi>> getCharacters() async {
    final Response response = await homeApiRepository.getCharacters();
    List<CharacterApi> characters = [];

    final bool validateStatusCode = response.statusCode == 200;
    if (validateStatusCode) {
      final dataFromAPI = response.data;
      final List<dynamic> charactersResults = dataFromAPI["results"];

      characters = charactersResults
          .map((character) => CharacterApi.fromJson(character))
          .toList();
    }
    return characters;
  }
}

final homeController = HomeController();
