class OriginApi {
  final String name;

  OriginApi({required this.name});

  factory OriginApi.fromJson(Map<String, dynamic> json) {
    return OriginApi(
      name: json['name'],
    );
  }
}
