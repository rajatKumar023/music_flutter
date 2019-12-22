import 'package:flutter/material.dart';
import 'package:music_flutter/utils/styles.dart';

class CurrentSongWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Styles.TERTIARY_COLOR,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}
