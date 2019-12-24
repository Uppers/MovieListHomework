import 'package:flutter/material.dart';
import 'package:movie_api/src/models/movie.dart';

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
    return Container(
      margin: const EdgeInsets.fromLTRB(32.00, 8.00, 32.00, 0.00),
      child: RaisedButton(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 15,
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(sanitisedInfo.mediumCoverImage),
                ),
              ),
            ),
            Expanded(
              flex: 85,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      sanitisedInfo.title,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      'rating: ${sanitisedInfo.rating}/10',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.all(5.0),
        color: Colors.lightBlueAccent,
        onPressed: onTouch,
      ),
    );
  }
}
