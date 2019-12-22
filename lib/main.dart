import 'package:flutter/material.dart';
import 'package:music_flutter/presentations/splash_page.dart';
import 'package:music_flutter/stores/album_store.dart';
import 'package:music_flutter/stores/play_song_store.dart';
import 'package:music_flutter/stores/songs_store.dart';
import 'package:music_flutter/stores/tab_bar_store.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TabBarStore>.value(value: TabBarStore()),
        Provider<SongsStore>.value(value: SongsStore()),
        Provider<AlbumStore>.value(value: AlbumStore()),
        Provider<PlaySongStore>.value(value: PlaySongStore()),
      ],
      child: MaterialApp(
        title: 'Flutter Music',
        debugShowCheckedModeBanner: true,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashPage(),
      ),
    );
  }
}
