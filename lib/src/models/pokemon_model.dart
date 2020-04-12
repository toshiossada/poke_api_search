class PokemonModel {
  int id;
  String name;
  String image;

  PokemonModel({
    this.id,
    this.name,
    this.image,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        id: json["id"],
        name: json["name"],
        image:
            'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/${json["id"].toString().padLeft(3, '0')}.png',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
