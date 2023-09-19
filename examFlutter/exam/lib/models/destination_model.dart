
class DestinationModel {
  String name;
  String image;

  DestinationModel(
  {required this.name, required this.image});

  factory DestinationModel.fromJson(Map<String, dynamic> json) {
    return DestinationModel(
        name: json["name"],
        image: json["image"]
    );
  }
}