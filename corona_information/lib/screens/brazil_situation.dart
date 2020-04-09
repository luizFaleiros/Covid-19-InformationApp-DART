import 'package:corona_information/components/card-base.dart';
import 'package:corona_information/models/CountryModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../api-consume/CoronaNinjaConsume.dart';

class BrazilSituation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Situação atual'),
      ),
      body: buildContainer(),
    );
  }

  buildContainer() {
    return Container(
      child: FutureBuilder(
          future: CoronaNinjaConsume.getByCountry('BRA'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final countryModel = snapshot.data;
              return buildCards(countryModel);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  buildCards(CountryModel countryModel) {
    final numberFormat = new NumberFormat("#,###", "pt_BR");
    String recovereds = numberFormat.format(countryModel.recovered);
    String deaths = numberFormat.format(countryModel.deaths);
    String cases = numberFormat.format(countryModel.cases);
    String todayCases = numberFormat.format(countryModel.todayCases);
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        CardBase(
          title: 'Pessoas curadas',
          text: recovereds,
          color: Colors.green[600],
        ),
        CardBase(
          title: 'Casos confirmados',
          text: cases,
        ),
        CardBase(title: 'Casos confirmados hoje',text: todayCases,),
        CardBase(title: 'Mortes confirmadas',text: deaths,color: Colors.red[600],)
      ],
    );
  }
}
