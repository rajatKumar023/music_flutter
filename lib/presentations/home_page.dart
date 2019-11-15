import 'package:flutter/material.dart';
import 'package:music_flutter/customs/bottom_navigation_bar.dart';
import 'package:music_flutter/customs/store_observer.dart';
import 'package:music_flutter/presentations/search_page.dart';
import 'package:music_flutter/stores/tab_bar_store.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: StoreObserver<TabBarStore>(
          builder: (TabBarStore tabBarStore, BuildContext context) {
            return Container(
              height: screenHeight,
              width: screenWidth,
              child: Column(
                children: <Widget>[
                  Expanded(child: _getSelectedPage(tabBarStore)),
                  CustomBottomNavigationBar()
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _getSelectedPage(TabBarStore tabBarStore) {
    switch (tabBarStore.selectedTabBar) {
      case 0:
        return Container();
        break;
      case 1:
        return Container();
        break;
      case 2:
        return SearchPage();
        break;
      case 3:
        return Container();
        break;
      case 4:
        return Container();
        break;
    }
  }
}