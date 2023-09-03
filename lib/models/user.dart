class User {
  int? handicap;
  int? id;
  String? name;
  String? surname;
  String? nickname;
  String? createdAt;
  String? updatedAt;

  User(String name, String surname, String nickname, String createdAt,
      String updatedAt, int id, int handicap);

  User.fromJson(Map<String, dynamic> json) {
    handicap = json["handicap"];
    id = json["id"];
    name = json["name"];
    surname = json["surname"];
    nickname = json["nickname"];
    createdAt = json["createdAt"];
    updatedAt = json["updatedAt"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["handicap"] = handicap;
    data["id"] = id;
    data["name"] = name;
    data["surname"] = surname;
    data["nickname"] = nickname;
    data["createdAt"] = createdAt;
    data["updatedAt"] = updatedAt;
    return data;
  }
}
