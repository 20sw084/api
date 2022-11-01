import 'package:api_app/network_helper/network.dart';
import 'package:api_app/screens/MyHomePage.dart';

Future controller() async {
  return await NetworkHelper.getDataFromAPI(
    "https://dummyjson.com/products/",
    getParam(),
  );
}
