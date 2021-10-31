import 'package:http/http.dart' as http;

const urlBase = 'https://617e75d52ff7e600174bd7e2.mockapi.io/api/';

class API {
  static Future getInfos() async {
    var url = Uri.parse(
      'https://617e75d52ff7e600174bd7e2.mockapi.io/api/infos',
    );
    var response = await http.get(url);
    return response;
  }
}
