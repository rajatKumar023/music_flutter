import 'package:flutter_sound/flutter_sound.dart';

class PlayAudioService {
  PlayAudioService._();

  static final PlayAudioService _instance = PlayAudioService._();

  factory PlayAudioService.getInstance() => _instance;

  FlutterSound flutterSound = FlutterSound();

  playSong({String filePath}) {
    flutterSound.startPlayer(filePath);
  }

  pauseSong() {
    flutterSound.pausePlayer();
  }

  resumeSong() {
    flutterSound.resumePlayer();
  }

  seekPlayer({int duration}) {
    flutterSound.seekToPlayer(duration);
  }

  stopPlayer(){
    flutterSound.stopPlayer();
  }
}
