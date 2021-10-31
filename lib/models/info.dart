// ignore_for_file: unnecessary_this, prefer_collection_literals, unnecessary_new

class Info {
  String title = '';
  String text = '';

  Info({required this.title, required this.text});

  Info.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['text'] = this.text;
    return data;
  }
}
