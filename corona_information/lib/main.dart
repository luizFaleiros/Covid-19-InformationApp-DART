import 'package:corona_information/models/CountryModel.dart';
import 'package:corona_information/screens/brazil_situatio.dart';
import 'package:flutter/material.dart';

import 'api-consume/CoronaNinjaConsume.dart';
import 'api-consume/CoronaNinjaConsume.dart';

void main() => runApp(CoronaInfo());

class CoronaInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Oie'),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return BrazilSituation();
                  }),
                );
              },
              child: Card(
                child: Center(child: Text('Situação Atual')),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return BrazilSituation();
                  }),
                );
              },
              child: Card(
                child: Center(child: Text('Situação Atual')),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return BrazilSituation();
                  }),
                );
              },
              child: Card(
                child: Center(child: Text('Situação Atual')),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return BrazilSituation();
                  }),
                );
              },
              child: Card(
                child: Center(child: Text('Situação Atual')),
              ),
            ),
          ],
        ),
    );
  }
}

