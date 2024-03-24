import 'dart:convert';

List<UserJson> userJsonFromJson(String str) =>
    List<UserJson>.from(json.decode(str).map((x) => UserJson.fromJson(x)));

String userJsonToJson(List<UserJson> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserJson {
  int id;
  String? name;
  String? email;
  String? password;

  UserJson({
    required this.id,
    this.name,
    this.email,
    this.password,
  });

  factory UserJson.fromJson(Map<String, dynamic> json) => UserJson(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
