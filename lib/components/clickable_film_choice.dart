import 'package:flutter/material.dart';
import 'movie_information.dart';

class ClickableFilmChoice extends StatelessWidget {
  const ClickableFilmChoice({
    Key key,
    @required this.sanitisedInfo,
    @required this.movieIndex,
    @required this.onTouch,
  }) : super(key: key);

  final MovieInformation sanitisedInfo;
  final int movieIndex;
  final Function onTouch;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(sanitisedInfo.title),
      color: Colors.lightBlueAccent,
      onPressed: () {
//        print(movieIndex);
        onTouch(movieIndex);
      },
    );
  }
}
