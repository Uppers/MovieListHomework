import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({
    @required this.pageTitle,
    @required this.filmTiles,
  });

  final String pageTitle;
  final Function filmTiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: ListView(
        children: filmTiles(),
      ),
    );
  }
}
