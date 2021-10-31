// ignore_for_file: prefer_typing_uninitialized_variables

class Applied {
  var name;
  var description;
  var user;

  Applied({this.name, this.description, this.user});

  Applied.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['user'] = user;
    return data;
  }
}
