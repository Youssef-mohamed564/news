import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/SourceResponse.dart';
import 'api_constants.dart';
import 'end_points.dart';

class ApiManager {
  static Future<SourceResponse> getSources() async{
    Uri url = Uri.https(ApiConstants.baseUrl, EndPoints.sourceApi, {
      'apiKey': ApiConstants.apiKey,
    });
    try{
      var response= await http.get(url);
      var bodyString =response.body;
      var json= jsonDecode(bodyString);
      return SourceResponse.fromJson(json);
    }
   catch(e){
      throw e;
   }
  }
}
