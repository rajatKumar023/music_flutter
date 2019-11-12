import 'package:mobx/mobx.dart';

part 'tab_bar_store.g.dart';

class TabBarStore = _TabBarStore with _$TabBarStore;

abstract class _TabBarStore with Store {
  @observable
  int selectedTabBar = 0;

  @action
  void changeTabBar(int index) {
    selectedTabBar = index;
  }
}
