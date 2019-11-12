import 'package:flutter/material.dart';
import 'package:music_flutter/customs/store_observer.dart';
import 'package:music_flutter/stores/tab_bar_store.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreObserver<TabBarStore>(
      builder: (TabBarStore tabBarStore, BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              tabBarItem(
                tabBarStore: tabBarStore,
                index: 0,
                iconData: Icons.home,
              ),
              tabBarItem(
                tabBarStore: tabBarStore,
                index: 1,
                iconData: Icons.music_note,
              ),
              tabBarItem(
                tabBarStore: tabBarStore,
                index: 2,
                iconData: Icons.search,
              ),
              tabBarItem(
                tabBarStore: tabBarStore,
                index: 3,
                iconData: Icons.person,
              ),
            ],
          ),
        );
      },
    );
  }

  tabBarItem({TabBarStore tabBarStore, int index, IconData iconData}) {
    return InkWell(
      onTap: () {
        if (tabBarStore.selectedTabBar != index) {
          tabBarStore.changeTabBar(index);
        }
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color:
              tabBarStore.selectedTabBar == index ? Colors.blue : Colors.white,
        ),
        child: Icon(
          iconData,
          color:
              tabBarStore.selectedTabBar == index ? Colors.white : Colors.blue,
          size: 30.0,
        ),
      ),
    );
  }
}
