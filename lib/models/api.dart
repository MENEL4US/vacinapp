import 'package:http/http.dart' as http;

const urlBase = 'https://617e75d52ff7e600174bd7e2.mockapi.io/api/';

class API {
  static Future getInfos() async {
    var url = Uri.parse(urlBase + 'infos');
    var response = await http.get(url);
    return response;
  }

  static Future getMyVaccines() async {
    var url = Uri.parse(urlBase + 'myvaccines');
    var response = await http.get(url);
    return response;
  }

  static Future getAppliedVaccines() async {
    var url = Uri.parse(urlBase + 'applied_vaccines');
    var response = await http.get(url);
    return response;
  }
}
