import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sky_scrapper_2/Modal_class.dart';

class APIHelper {
  APIHelper._();

  static final APIHelper apiHelper = APIHelper._();

  Future<Covid?> fetchData() async {
    String api = "https://api.rootnet.in/covid19-in/stats/latest";

    http.Response res = await http.get(Uri.parse(api));

    if (res.statusCode == 200) {
      Map decodedData = jsonDecode(res.body);

      // List<Covid> allData =
      //     decodedData.map((e) => Covid.fromJson(json: e)).toList();
      Covid covid = Covid.fromJson(json: decodedData);

      return covid;
    } else {
      return null;
    }
  }
}
