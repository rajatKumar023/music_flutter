// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$AlbumStore on _AlbumStore, Store {
  final _$isLoadingAtom = Atom(name: '_AlbumStore.isLoading');

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

  final _$_AlbumStoreActionController = ActionController(name: '_AlbumStore');

  @override
  void fetchAlbums() {
    final _$actionInfo = _$_AlbumStoreActionController.startAction();
    try {
      return super.fetchAlbums();
    } finally {
      _$_AlbumStoreActionController.endAction(_$actionInfo);
    }
  }
}
