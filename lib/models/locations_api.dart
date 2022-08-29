class LocationApi {
  final String name;

  LocationApi({required this.name});

  factory LocationApi.fromJson(Map<String, dynamic> json) {
    return LocationApi(
      name: json['name'],
    );
  }
}
