// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_song_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$PlaySongStore on _PlaySongStore, Store {
  final _$isPlayingAtom = Atom(name: '_PlaySongStore.isPlaying');

  @override
  bool get isPlaying {
    _$isPlayingAtom.context.enforceReadPolicy(_$isPlayingAtom);
    _$isPlayingAtom.reportObserved();
    return super.isPlaying;
  }

  @override
  set isPlaying(bool value) {
    _$isPlayingAtom.context.conditionallyRunInAction(() {
      super.isPlaying = value;
      _$isPlayingAtom.reportChanged();
    }, _$isPlayingAtom, name: '${_$isPlayingAtom.name}_set');
  }

  final _$currentSongFilePathAtom =
      Atom(name: '_PlaySongStore.currentSongFilePath');

  @override
  String get currentSongFilePath {
    _$currentSongFilePathAtom.context
        .enforceReadPolicy(_$currentSongFilePathAtom);
    _$currentSongFilePathAtom.reportObserved();
    return super.currentSongFilePath;
  }

  @override
  set currentSongFilePath(String value) {
    _$currentSongFilePathAtom.context.conditionallyRunInAction(() {
      super.currentSongFilePath = value;
      _$currentSongFilePathAtom.reportChanged();
    }, _$currentSongFilePathAtom,
        name: '${_$currentSongFilePathAtom.name}_set');
  }

  final _$currentSongIdAtom = Atom(name: '_PlaySongStore.currentSongId');

  @override
  String get currentSongId {
    _$currentSongIdAtom.context.enforceReadPolicy(_$currentSongIdAtom);
    _$currentSongIdAtom.reportObserved();
    return super.currentSongId;
  }

  @override
  set currentSongId(String value) {
    _$currentSongIdAtom.context.conditionallyRunInAction(() {
      super.currentSongId = value;
      _$currentSongIdAtom.reportChanged();
    }, _$currentSongIdAtom, name: '${_$currentSongIdAtom.name}_set');
  }
}
