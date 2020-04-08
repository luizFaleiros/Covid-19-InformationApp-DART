class CountryModel {
  String country;
  int updated;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int active;
  int critical;
  int casesPerOneMillion;
  int deathsPerOneMillion;
  int tests;
  int testsPerOneMillion;

  CountryModel({
      this.country,
      this.updated,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion
   });

  factory CountryModel.fromJson(Map<String,dynamic> parsedJson){
    return CountryModel(
        country: parsedJson['country'],
        updated: parsedJson['updated'],
        cases: parsedJson['cases'],
        todayCases: parsedJson['todayCases'],
        deaths: parsedJson['deaths'],
        todayDeaths: parsedJson['todayDeaths'],
        recovered: parsedJson['recovered'],
        active: parsedJson['active'],
        critical: parsedJson['critical'],
        casesPerOneMillion: parsedJson['casesPerOneMillion'],
        deathsPerOneMillion: parsedJson['deathsPerOneMillion'],
        tests: parsedJson['tests'],
        testsPerOneMillion: parsedJson['testsPerOneMillion']
    );
  }
}
