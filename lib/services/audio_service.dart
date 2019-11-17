import 'package:flutter_audio_query/flutter_audio_query.dart';

class AudioService {
  AudioService._();

  static final AudioService _instance = AudioService._();

  factory AudioService.getInstance() => _instance;

  final FlutterAudioQuery audioQuery = FlutterAudioQuery();

  Future<void> getArtists() async {
    List<ArtistInfo> artists = await audioQuery.getArtists();
    artists.forEach((artist) {
      print(artist);
    });
    return artists;
  }

  Future<void> getAlbums() async {
    List<AlbumInfo> albumList = await audioQuery.getAlbums();
    return albumList;
  }

  Future<void> getSongs() async {
    List<SongInfo> songs = await audioQuery.getSongs();
//
//    albumList.foreach( (album){
//      audioQuery.getSongsFromAlbum(album: album.name);
//    } );
    return songs;
  }
}
