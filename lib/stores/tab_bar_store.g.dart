// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_bar_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$TabBarStore on _TabBarStore, Store {
  final _$selectedTabBarAtom = Atom(name: '_TabBarStore.selectedTabBar');

  @override
  int get selectedTabBar {
    _$selectedTabBarAtom.context.enforceReadPolicy(_$selectedTabBarAtom);
    _$selectedTabBarAtom.reportObserved();
    return super.selectedTabBar;
  }

  @override
  set selectedTabBar(int value) {
    _$selectedTabBarAtom.context.conditionallyRunInAction(() {
      super.selectedTabBar = value;
      _$selectedTabBarAtom.reportChanged();
    }, _$selectedTabBarAtom, name: '${_$selectedTabBarAtom.name}_set');
  }

  final _$_TabBarStoreActionController = ActionController(name: '_TabBarStore');

  @override
  void changeTabBar(int index) {
    final _$actionInfo = _$_TabBarStoreActionController.startAction();
    try {
      return super.changeTabBar(index);
    } finally {
      _$_TabBarStoreActionController.endAction(_$actionInfo);
    }
  }
}
