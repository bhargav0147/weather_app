import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/wether/modal/weather_model.dart';


class ApiHelper {
  static ApiHelper apiHelper = ApiHelper();

  String? link =
      'https://api.openweathermap.org/data/2.5/weather?lat=21.1702&lon=72.8311&appid=6e2a97e08f38f6d24bc52bc3f1a5c97a';

  Future<Welcome> getJson()
  async {
    var Response =await http.get(Uri.parse(link!));
    var json=jsonDecode(Response.body);

    Welcome welcome=Welcome.fromJson(json);
    return welcome;
  }
}
