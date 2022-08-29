// ignore_for_file: public_member_api_docs, sort_constructors_first

class CharacterApi {
  final String origin;
  final String location;
  final int id;
  final String name;
  final String image;
  final String species;
  final String gender;
  final String status;

  CharacterApi({
    required this.origin,
    required this.location,
    required this.id,
    required this.name,
    required this.image,
    required this.species,
    required this.gender,
    required this.status,
  });

  factory CharacterApi.fromJson(Map<String, dynamic> character) {
    return CharacterApi(
      id: character['id'],
      name: character['name'],
      image: character['image'],
      species: character['species'],
      gender: character['gender'],
      status: character['status'],
      location: character['location']['name'],
      origin: character['origin']['name'],
    );
  }
}
