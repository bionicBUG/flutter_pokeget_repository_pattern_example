class PokeModel {
  String? name;

  PokeModel({required this.name});

  PokeModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }
}
