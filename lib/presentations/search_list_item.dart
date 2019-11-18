import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_flutter/services/audio_service.dart';

class SearchListItem extends StatelessWidget {
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
                  'Bareilly Ki Barfi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
                Text(
                  'Album: Various Artists',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.clear,
              color: Colors.white,
            ),
            onPressed: () {
              AudioService.getInstance().getSongs().then((List<SongInfo> value){
                value.forEach((SongInfo info){
                  print('info');
                  print(info);
                });
              });
            },
          )
        ],
      ),
    );
  }
}
