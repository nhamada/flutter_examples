import 'package:flutter/material.dart';

import 'package:navigator_examples/animations/image_full_screen.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Image Screen'),
      ),
      body: new GestureDetector(
        onTap: () => Navigator.push(
          context,
          new MaterialPageRoute(
            builder: (context) => new ImageFullScreen(),
          )
        ),
        child: new Hero(
          tag: 'imageHero',
          child: new Image.network(
            'https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg'
          ),
        ),
      ),
    );
  }
}