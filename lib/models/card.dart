class CardModel {
  final int userId;
  final String title;
  final String body;

  CardModel({required this.userId, required this.title, required this.body});

  CardModel.fromJson(Map<String, dynamic> json)
      : userId = json["userId"],
        title = json["title"],
        body = json["body"];
}