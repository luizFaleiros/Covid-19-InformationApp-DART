import 'dart:async';
import 'dart:convert';
import 'package:corona_information/Models/CountryInformationModel.dart';
import 'package:corona_information/Models/CountryModel.dart';
import 'package:http/http.dart' as http;


class CoronaNinjaConsume {
  String baseUrl = 'https://corona.lmao.ninja/';


  getAll() async {
    var response = await http.get(baseUrl + "all");
    print("Response status: ${json.decode(response.body)}");
  }

  getHistory() async {
    var response = await http.get(baseUrl + "v2/historical");
    print("Response status: ${json.decode(response.body)}");
  }

//  getByCountry(String country) async{
//    var response = await http.get(baseUrl+"countries/$country");
//    print("Response status: ${json.decode(response.body)}");
//  }

  Future<CountryModel> getByCountry(String country) async {
    var response = await http.get(baseUrl + "countries/$country");
    var responseBody = jsonDecode(response.body);
    var completer = new Completer<CountryModel>();
    completer.complete();
    CountryModel countryModel;
    countryModel.country = responseBody["country"];
    countryModel.countryInformationModel = responseBody["countryInformationModel"];
    countryModel.active = responseBody["active"];
    countryModel.cases = responseBody["cases"];
    countryModel.casesPerMillion = responseBody["casesPerMillion"];
    countryModel.todayCases = responseBody["todayCases"];
    countryModel.deaths = responseBody["deaths"];
    countryModel.todayDeaths = responseBody["todayDeaths"];
    countryModel.recovered = responseBody["recovered"];
    countryModel.critical = responseBody["critical"];
    countryModel.deathsPerOneMillion = responseBody["deathsPerOneMillion"];
    countryModel.updated = responseBody["updated"];
    print(countryModel);
    return Future.delayed(Duration(seconds: 1),() => countryModel);
  }

}

void main() {
  Completer complete = new Completer<CountryModel>();
  CoronaNinjaConsume coronaNinjaConsume = new CoronaNinjaConsume();
  CountryModel entity = complete.complete(coronaNinjaConsume.getByCountry("BRA"));
  print(entity.casesPerMillion);
}

