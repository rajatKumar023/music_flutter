import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_flutter/utils/styles.dart';

class SearchListItem extends StatelessWidget {
  SearchListItem({this.albumInfo});

  final AlbumInfo albumInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 60.0,
            width: 60.0,
            color: Colors.green,
            child: albumInfo.albumArt != null
                ? Image.file(
                    File(albumInfo.albumArt),
                    fit: BoxFit.cover,
                  )
                : const SizedBox(),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  albumInfo.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Styles.PRIMARY_COLOR,
                    fontSize: 17.0,
                  ),
                ),
                albumInfo.artist != null
                    ? Text(
                        albumInfo.artist,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 14.0,
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.clear,
              color: Styles.PRIMARY_COLOR,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
