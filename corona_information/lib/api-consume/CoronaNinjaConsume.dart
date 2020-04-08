import 'dart:convert';
import 'package:corona_information/models/CountryModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;




class CoronaNinjaConsume {
  String baseUrl = 'https://corona.lmao.ninja/';

  getAll() {
    final response = http.get(baseUrl + "all");
  }

  getHistory() {
    final response = http.get(baseUrl + "v2/historical");
  }

  Future<CountryModel> getByCountry(String country) async {
    try {
      final response = await http.get(baseUrl + "countries/$country");
      if (response.statusCode == 200) {
        final body = json.decode(response.body);
        return CountryModel.fromJson(body);
      }
    }catch(e){
      debugPrint(e);
    }
  }
}