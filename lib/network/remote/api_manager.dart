import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app1/models/sourceModel.dart';

class ApiManager {
  static Future<SourcesResponce> getsources() async {
    Uri url = Uri.https("newsapi.org", "/v2/everything",
        {"apiKey": "a506aed08a0a4e0fa76afb5748b426e3"});
    http.Response response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    SourcesResponce sourcesResponce = SourcesResponce.fromJson(jsonData);
    return sourcesResponce;
  }
}
