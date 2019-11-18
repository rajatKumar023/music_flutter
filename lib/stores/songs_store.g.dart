// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songs_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$SongsStore on _SongsStore, Store {
  final _$isLoadingAtom = Atom(name: '_SongsStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$_SongsStoreActionController = ActionController(name: '_SongsStore');

  @override
  void fetchSongs() {
    final _$actionInfo = _$_SongsStoreActionController.startAction();
    try {
      return super.fetchSongs();
    } finally {
      _$_SongsStoreActionController.endAction(_$actionInfo);
    }
  }
}
