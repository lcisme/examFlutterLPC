import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:exam/models/destination_model.dart';
import 'dart:convert';

class DataServices {
  String baseUrl = "http://10.0.2.2:8080";

  /*Future<List<DestinationModel>> getInfoDestination() async {
    String subUrl = "/destination";
    http.Response response = await http.get(Uri.parse(baseUrl + subUrl));
    try {
      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        return list.map((e) => DestinationModel.fromJson(e)).toList();
      }
    } catch (e) {
      print(e);
    }
    return <DestinationModel>[];
  }
*/Future<List<Map<String, String>>> getInfoDestination() async {
    String subUrl = "/destination";
    http.Response response = await http.get(Uri.parse(baseUrl + subUrl));
    Completer<List<Map<String, String>>> completer = Completer();

    try {
      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        List<Map<String, String>> resultMapList = [];

        for (var jsonItem in list) {
          Map<String, String> resultMap = {};

          jsonItem.forEach((key, value) {
            resultMap[key] = value.toString();
          });

          resultMapList.add(resultMap);
        }

        completer.complete(resultMapList);
      } else {
        completer.completeError("Request failed with status: ${response.statusCode}");
      }
    } catch (e) {
      completer.completeError(e.toString());
    }

    return completer.future;
  }
}