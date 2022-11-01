import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';

class NetworkHelper {
  static Future zeroParameterAPI(String apiEndPoint) async {
    Response response = await get(
      Uri.parse(apiEndPoint),
    );
    if (response.statusCode == 200) {
      Map data = json.decode(response.body);
      log(data.toString());
      return data;
    } else {
      log("NO Data so far.");
    }
  }

  static Future getDataFromAPI(String apiEndPoint, String parameter) async {
    Response response = await get(
      Uri.parse(apiEndPoint + parameter),
    );
    if (response.statusCode == 200) {
      Map data = json.decode(response.body);
      log(data.toString());
      return data;
    } else {
      log("NO Data so far.");
    }
  }
}
