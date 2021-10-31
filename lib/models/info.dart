// ignore_for_file: prefer_typing_uninitialized_variables

class Info {
  var title;
  var text;

  Info({required this.title, required this.text});

  Info.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['text'] = text;
    return data;
  }
}
