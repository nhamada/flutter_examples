import 'package:flutter/material.dart';

class ImageFullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GestureDetector(
        onTap: () => Navigator.pop(context),
        child: new Center(
          child: new Hero(
            tag: 'imageHero',
            child: new Image.network(
              'https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg'
            ),
          ),
        ),
      ),
    );
  }
}