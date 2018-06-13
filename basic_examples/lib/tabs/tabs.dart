import 'package:flutter/material.dart';

import 'package:basic_examples/tabs/car_view.dart';
import 'package:basic_examples/tabs/transit_view.dart';
import 'package:basic_examples/tabs/bike_view.dart';

class ExampleTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Tabs'),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(icon: new Icon(CarView.icon)),
              new Tab(icon: new Icon(TransitView.icon)),
              new Tab(icon: new Icon(BikeView.icon)),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new CarView(),
            new TransitView(),
            new BikeView(),
          ],
        ),
      ),
    );
  }
}