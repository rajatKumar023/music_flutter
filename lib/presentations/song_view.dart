import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_flutter/customs/store_observer.dart';
import 'package:music_flutter/stores/album_store.dart';
import 'package:music_flutter/stores/play_song_store.dart';
import 'package:provider/provider.dart';

class SongView extends StatelessWidget {
  SongView({this.songInfo});

  final SongInfo songInfo;
  AlbumInfo songAlbum;

  @override
  Widget build(BuildContext context) {
    List<AlbumInfo> albumInfo = Provider.of<AlbumStore>(context).albumsList;
    albumInfo.forEach((AlbumInfo album) {
      if (album.id == songInfo.albumId) {
        songAlbum = album;
      }
    });
    return StoreObserver<PlaySongStore>(
      builder: (PlaySongStore playSongStore, BuildContext context) {
        return GestureDetector(
          onTap: () {
            if (playSongStore.isPlaying &&
                playSongStore.currentSongId == songInfo.id) {
              playSongStore.pauseSong();
            } else {
              playSongStore.playSong(songInfo: songInfo);
            }
          },
          child: Container(
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  color: Colors.green,
                  child: songAlbum != null && songAlbum.albumArt != null
                      ? Image.file(
                          File(songAlbum.albumArt),
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
                        songInfo.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        songInfo.artist,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white54,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
