import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:mobx/mobx.dart';
import 'package:music_flutter/customs/globals.dart';

part 'songs_store.g.dart';

class SongsStore = _SongsStore with _$SongsStore;

abstract class _SongsStore with Store {
  ObservableList<SongInfo> songsList = ObservableList<SongInfo>();

  @observable
  bool isLoading = false;

  @action
  void fetchSongs() {
    isLoading = true;
    audioService.getSongs().then(fetchSongsComplete);
  }

  void fetchSongsComplete(List<SongInfo> songs) {
    songsList.addAll(songs);
    isLoading = false;
  }
}
