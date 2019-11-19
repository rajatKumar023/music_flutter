import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:mobx/mobx.dart';
import 'package:music_flutter/customs/globals.dart';

part 'album_store.g.dart';

class AlbumStore = _AlbumStore with _$AlbumStore;

abstract class _AlbumStore with Store {
  ObservableList<AlbumInfo> albumsList = ObservableList<AlbumInfo>();

  @observable
  bool isLoading = false;

  @action
  void fetchAlbums() {
    isLoading = true;
    audioService.getAlbums().then(fetchSongsComplete);
  }

  void fetchSongsComplete(List<AlbumInfo> albums) {
    albumsList.addAll(albums);
    isLoading = false;
  }
}
