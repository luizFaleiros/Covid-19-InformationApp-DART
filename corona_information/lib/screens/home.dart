import 'package:corona_information/screens/brazil_situatio.dart';
import 'package:corona_information/screens/graphic_plot.dart';
import 'package:corona_information/screens/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  return News();
                }),
              );
            },
            child: Card(
              child: Center(child: Text('Noticias')),
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return GraphicPlot();
                }),
              );
            },
            child: Card(
              child: Center(child: Text('Grafico do tempo')),
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
              child: Center(child: Text('Precauções')),
            ),
          ),
        ],
      ),
    );
  }
}