import 'package:covid/model/attributes.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

class API {
  static final URL = 'https://api.kawalcorona.com/indonesia/provinsi/';
  // static final COUNTRY = 'id';

  //endpoint


   List<Covid> listNews = [];

  Future<List<Covid>> getTopHeadlines() async {
    listNews.clear();

    final http.Response apiResponse = await http.get(URL);

    if(apiResponse.statusCode == 200){
      final listData = json.decode(apiResponse.body);

      listData.forEach(
        (data) => listNews.add(Covid.fromJson(data))
      );


      return listNews;
    }
    else {
      listNews = [];
    }
    return listNews;
  }
}