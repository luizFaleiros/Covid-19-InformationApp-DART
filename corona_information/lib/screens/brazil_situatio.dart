import 'package:corona_information/models/CountryModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../api-consume/CoronaNinjaConsume.dart';
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
          builder: (context, snapshot){
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
    int recovereds = countryModel.recovered;
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Pessoas curadas'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,20.0,0,0),
                child: Text(
                  '$recovereds',
                  style: TextStyle(color: Colors.green[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
                ),
              ),
            ],
          ),
        ),
        Card(),
        Card(),
        Card()
      ],
    );
  }
}
