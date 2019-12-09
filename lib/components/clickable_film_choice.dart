import 'package:flutter/material.dart';
import 'package:movie_api/models/movie.dart';

class ClickableFilmChoice extends StatelessWidget {
  const ClickableFilmChoice({
    Key key,
    @required this.sanitisedInfo,
    @required this.onTouch,
  }) : super(key: key);

  final Movie sanitisedInfo;
  final Function onTouch;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(sanitisedInfo.title),
      color: Colors.lightBlueAccent,
      onPressed: onTouch,
    );
  }
}
