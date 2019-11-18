import 'package:flutter_audio_query/flutter_audio_query.dart';

class AudioService {
  AudioService._();

  static final AudioService _instance = AudioService._();

  factory AudioService.getInstance() => _instance;

  final FlutterAudioQuery audioQuery = FlutterAudioQuery();

  Future<List<ArtistInfo>> getArtists() async {
    List<ArtistInfo> artists = await audioQuery.getArtists();
    artists.forEach((artist) {
      print(artist);
    });
    return artists;
  }

  Future<List<AlbumInfo>> getAlbums() async {
    List<AlbumInfo> albumList = await audioQuery.getAlbums();
    return albumList;
  }

  Future<List<SongInfo>> getSongs() async {
    List<SongInfo> songs = await audioQuery.getSongs();
    return songs;
  }
}
