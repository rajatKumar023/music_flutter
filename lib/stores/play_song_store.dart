import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:mobx/mobx.dart';
import 'package:music_flutter/customs/globals.dart';

part 'play_song_store.g.dart';

class PlaySongStore = _PlaySongStore with _$PlaySongStore;

abstract class _PlaySongStore with Store {
  @observable
  bool isPlaying = false;

  @observable
  String currentSongFilePath;

  @observable
  String currentSongId;

  playSong({SongInfo songInfo}) {
    if (isPlaying) {
      playAudioService.stopPlayer();
    }
    isPlaying = true;
    currentSongFilePath = songInfo.filePath;
    currentSongId = songInfo.id;
    playAudioService.playSong(filePath: songInfo.filePath);
  }

  pauseSong() {
    playAudioService.pauseSong();
    isPlaying = false;
  }

  resumeSong() {
    playAudioService.resumeSong();
  }
}
